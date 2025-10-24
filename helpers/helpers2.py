import numpy as np
import yaml
import matplotlib.pyplot as plt
import time

from math import sqrt, pi
from mpl_toolkits.axes_grid1 import make_axes_locatable, axes_size
from matplotlib import ticker

from scipy.optimize import curve_fit
from scipy.sparse import diags
from scipy.sparse.linalg import eigs
from findiff import FinDiff
from scipy.interpolate import RegularGridInterpolator

BLUE = '#6699cc'
GRAY = '#999999'
DARKGRAY = '#333333'
YELLOW = '#ffcc33'
GREEN = '#339933'
RED = '#ff3333'
BLACK = '#000000'
WHITE = '#ffffff'

hbar = 1.0546 * 1e-34
qe = 1.602 * 1e-19
me = 9.109 * 1e-31
l0 = 1e-6
Escale = hbar**2/2/me/l0**2

ff_types = ['xy', 'yz']

def flatten(l):
    return [item for sublist in l for item in sublist]

def harmonicPotential(x, A, B, offset):
    return  A * x**2 + B * x**4 + offset

def find_max_index(arr):
    max_index = np.unravel_index(arr.argmax(), arr.shape)
    return max_index

def set_limits(ax, x0, xN, y0, yN, aspect='equal'):
    ax.set_xlim(x0, xN)
    ax.set_ylim(y0, yN)
    ax.set_aspect(aspect)

def _default_ax():
    ax = plt.gca()
    ax.set_aspect("equal")
    return ax

def read_ff_output(filename: str, ff_type: str) -> dict:
    
    if ff_type not in ff_types:
        raise Exception(f"Incorrect ff_type, choose from {ff_types}")
    
    data = {}
    with open(filename) as file:
        for line in file:
            if line[:6] == 'startD':
                t = line.split()
                key = t[1]
                array = []
                dtype = 'data'   
            elif line[:7] == f'start{ff_type.upper()}':
                t = line.split()
                key = t[1]
                array = []
                dtype = ff_type
            elif line[:3] == 'end':
                if dtype == 'data':
                    data.update({key: np.asarray(array, dtype=float)})
                elif dtype == ff_type:
                    data.update({key: np.asarray(flatten(array), dtype=float)})
                else: pass
            elif line.split() == []:
                pass
            else:
                array.append([float(item) for item in line.split()])
    return data

class FrequencyAnalysis():

    trap_area = {
        'x': [-0.5, 0.5],
        'y': [-0.5, 0.5]
    }
    
    def __init__(self, *filename_args: tuple[str, str]):
        for fname, attrname in filename_args:
            data = read_ff_output(fname, 'xy')
            setattr(self, attrname, data)
        
        #with open('config.yml', 'r') as file:
        #    self.config = yaml.safe_load(file)
        
    def plot_coupling_const(self, couplingConst: list, gate: str, ax=None) -> None:
        if ax is None:
            ax = _default_ax()
        ax.contourf(couplingConst['xlist'], couplingConst['ylist'], couplingConst[gate], 17, cmap='RdYlBu_r', vmin=-0.03)
        set_limits(ax, couplingConst['xlist'][0], couplingConst['xlist'][-1], couplingConst['ylist'][0], couplingConst['ylist'][-1])

    def potential(self, couplingConst: list, voltage_list: list) -> list:
        num = len(couplingConst.keys()) - 2
        if len(voltage_list) != num:
            raise Exception(f"Incorrect length of voltage list. Please provide a list with length {num}.")

        nx, ny = len(couplingConst['xlist']), len(couplingConst['ylist'])
        data = np.zeros((ny, nx),dtype=np.float64)
        for i, (k, v) in enumerate(couplingConst.items()):
            if k == 'xlist' or k == 'ylist':
                pass
            else:
                data = data + voltage_list[i] * v
        return couplingConst['xlist'], couplingConst['ylist'], data
    
    def plot_potential_2D(self, couplingConst: list, voltage_list: list, ax=None, zero_line=True, **kwargs):
        if ax is None:
            ax = _default_ax()
        data = self.potential(couplingConst, voltage_list)
        im = ax.contourf(*data, 17, **kwargs)
        if zero_line:
            ax.contour(*data, [0], linestyles='dashed', colors=GRAY)
        divider = make_axes_locatable(ax)
        width = axes_size.AxesY(ax, aspect=1./4)
        pad = axes_size.Fraction(0.5, width)
        cax = divider.append_axes("right", size=width, pad=pad)
        cb = plt.colorbar(im, cax=cax)
        cb.locator = ticker.MaxNLocator(nbins=5)
        cb.update_ticks()
    
    ''' TODO
    def plot_potential_3D(self, voltage_list: list, scale: str, ax=None, **kwargs):
        if ax is None:
            ax = _default_ax()
        data = self.potential(voltage_list, scale)
        ax = fig.add_subplot(projection='3d')
        ax.plot_wireframe(X_trap, Y_trap, interp((Y_trap, X_trap)), rstride=3, cstride=3, alpha=0.4, color='m', label='linear interp')
        plt.show()
    '''

    def plot_potential_XYcut(self, couplingConst:list, voltage_list: list, xy_cut: str=None, ax=None):
        if ax is None:
            ax = _default_ax()

        X, Y, Phi = self.potential(couplingConst, voltage_list)
        if xy_cut=='x':
            ax.plot(X, -Phi[int(np.size(Y)/2), :]*1e3, label=f'x_cut')
        elif xy_cut=='y':
            ax.plot(Y, -Phi[:, int(np.size(X)/2)]*1e3, label=f'y_cut')
        else:
            ax.plot(Y, -Phi[:, int(np.size(X)/2)]*1e3, label=f'y_cut')
            ax.plot(X, -Phi[int(np.size(Y)/2), :]*1e3, label=f'x_cut')
        ax.legend()
        ax.set_xlabel('$x$ or $y$ (um)')
        ax.set_ylabel('electrostatic potential $-\phi(x)$ (mV)')
    
    def make_trap_for_frequencyCalc(self, couplingConst:list, voltage_list: list, x_range: list, y_range: list) -> tuple:
        '''
        - centering the trap potential to the potential MAX position
        - subtracting the potential MAX value
        '''
        X, Y, Phi = self.potential(couplingConst, voltage_list)

        # first we find the trap minimum location in the electron trap region defined by user in self.trap_area
        interp = RegularGridInterpolator((Y ,X), Phi, bounds_error=False, fill_value=None)
        xx = np.linspace(self.trap_area.get('x')[0], self.trap_area.get('x')[1], 701)
        yy = np.linspace(self.trap_area.get('y')[0], self.trap_area.get('y')[1], 701)
        X_trap, Y_trap = np.meshgrid(xx, yy, indexing='ij')
        Phi_trap = np.float64(interp((Y_trap, X_trap)))

        ij_max = find_max_index(Phi_trap)
        x_center = xx[ij_max[0]]
        y_center = yy[ij_max[1]]

        # here we recenter the trap potential to the trap minimum location and create fine trap potential matrix
        xx = np.linspace(x_center + x_range[0], x_center + x_range[1], 201)
        yy = np.linspace(y_center + y_range[0], y_center + y_range[1], 201)
        X_trap, Y_trap = np.meshgrid(xx, yy, indexing='ij')
        Phi_trap = np.float64(interp((X_trap, Y_trap)))
        phi_max = np.max(Phi_trap)
        return x_center, y_center, xx, yy, Phi_trap - phi_max

    def get_trapfreq_HarmonicApprox(self, X_trap: list, Y_trap: list, Phi_trap: list):
        '''
        calculates motional frequency from using a harmonical approximation of the trap
        '''
        try:
            paramsx, _ = curve_fit(harmonicPotential, X_trap, -Phi_trap[int(np.size(Y_trap)/2), :])
            paramsy, _ = curve_fit(harmonicPotential, Y_trap, -Phi_trap[:, int(np.size(X_trap)/2)])
            fx = sqrt(2*qe*paramsx[0]/me)/2/pi/1e9/l0
            fy = sqrt(2*qe*paramsy[0]/me)/2/pi/1e9/l0
            #amharmX = 3*qe*paramsx[1]*hbar/me**2/(2*pi*fx*1e9)**2/2/pi/1e6
            amharmY = 3*qe*paramsy[1]*hbar/me**2/(2*pi*fy*1e9)**2/2/pi/1e6/l0**4

            plt.plot(Y_trap, -Phi_trap[:, int(np.size(X_trap)/2)], 'o')
            plt.plot(Y_trap, harmonicPotential(Y_trap, *paramsy))
            plt.show()
            return fx, fy, amharmY
        except:
            fx, fy, amharmY = float("nan")
            return fx, fy, amharmY
        
    def get_trapfreq_Schrodinger(self, X_trap: list, Y_trap: list, Phi_trap: list, extract_states=False):
        '''
        calculates motional frequency from a Shrodinger equation
        '''
        dx = X_trap[1] - X_trap[0]
        dy = Y_trap[1] - Y_trap[0]

        laplace = FinDiff(0, dx, 2) + FinDiff(1, dy, 2)
        hamiltonian = -laplace.matrix(Phi_trap.shape) - np.float64(qe/Escale)*diags(Phi_trap.reshape(-1))
        energies_unsorted, states_unsorted = eigs(hamiltonian, k=6, which='SR')
        energies_unsorted = energies_unsorted.real
        if extract_states:
            sorted_indices = np.argsort(energies_unsorted)
            print(sorted_indices)
            energies = [energies_unsorted[i] for i in sorted_indices]
            states = [states_unsorted[i] for i in sorted_indices]
            frequencies = (energies - energies[0]) * Escale/hbar/2/pi/1e9
            return frequencies[1:], states, states_unsorted
        else:
            energies_unsorted.sort()
            frequencies = (energies_unsorted - energies_unsorted[0]) * Escale/hbar/2/pi/1e9
            return frequencies[1:]

    def trap_sort_harmonic(self, Vlist_list: list, scale: str):        
        Ratio_ind = []
        NoRatio_ind = []
        Failed_ind = []

        for i in range(len(Vlist_list)): 
            fx,fy = self.trap_harmonic(Vlist_list[i],scale)
            if np.isnan(fy):
                Failed_ind.append(i)
            elif fx/fy>2:     
                Ratio_ind.append(i)
            else:
                NoRatio_ind.append(i)
                    
        return Ratio_ind, NoRatio_ind, Failed_ind



    def trap_Dipole(self, voltage_list:list, scale: str):
        energies, states = self.trap_Schrodinger(voltage_list, scale)
        # X_trap, Y_trap, _ = self.trap_potential(voltage_list, scale)
        # psi0 = np.real(states[:,0].reshape(len(Y_trap),len(X_trap)))
        # psi1 = np.real(states[:,1].reshape(len(Y_trap),len(X_trap)))
        # psi2 = np.real(states[:,2].reshape(len(Y_trap),len(X_trap)))
        # Xg,Yg = np.meshgrid(X_trap,Y_trap)
    
        # xdipole1 = np.sum(Xg*psi1*psi0)
        # xdipole2 = np.sum(Xg*psi2*psi0)
        # ydipole1 = np.sum(Yg*psi1*psi0)
        # ydipole2 = np.sum(Yg*psi2*psi0)
        return energies,states

    def trap_sort_Dipole(self, Vlist_list: list, scale: str):

        NoDipole_ind = []
        Dipole_ind = []
        Failed_ind = []

        for i in range(len(Vlist_list)): 
            _,fy = self.trap_harmonic(Vlist_list[i],scale)
            if np.isnan(fy):
                Failed_ind.append(i)
            else:
                xdipole1, xdipole2, _, _, _, _ = self.trap_Dipole(Vlist_list[i],scale)
                if ((abs(xdipole2)>0.01) or (abs(xdipole1)>0.01)) :
                    Dipole_ind.append(i)
                else:
                    NoDipole_ind.append(i)

        return NoDipole_ind, Dipole_ind, Failed_ind

    def HeZ_potential(self, voltage_list: list, scale: str) -> list:
        alphas = self.get_data(scale)
        num = len(alphas.keys()) - 2
        if len(voltage_list) != num:
            raise Exception(f"Incorrect length of voltage list. Please provide a list with length {num}.")

        ny,nz = len(alphas['ylist']), len(alphas['zlist'])
        data = np.zeros((nz, ny))
        for i, (k, v) in enumerate(alphas.items()):
            if k == 'ylist' or k == 'zlist':
                pass
            else:
                data = data + voltage_list[i] * v
        return alphas['ylist'], alphas['zlist'], data

    def HeZ_Harmonic(self, voltage_list: list, scale: str):
        Y, Z, phi = self.HeZ_potential(voltage_list, scale)
        fy = []
        Yc = 0
        Y_trap = np.linspace(Yc-0.4, Yc+0.4,200)
        for phiy in phi:
            f = interpolate.interp1d(Y,phiy)
            temp = f(Y_trap)
            params, _ = curve_fit(harmonicPotential,Y_trap,-temp)
            fy.append(np.sqrt(2*qe*params[0]/me)/2/np.pi/10**9/l0)

        return Z, fy

def main():
    ffdata = FrequencyAnalysis("result_NB/phi_large.txt", "result_NB/phi_small.txt","result_NB/phi_HeZ.txt")
    ffdata.trap_area = {
        'x': [-2.5, 2.5],
        'y': [-0.4, 0.4]
    }

    vlist = [0.3, -0.2, -0.2, 0, 0, -0.2]

    x0, y0, xlist, ylist, philist = ffdata.make_trap_for_frequencyCalc(vlist, scale='small', x_range=[-0.25, 0.25], y_range=[-0.25, 0.25])
    
    tic = time.perf_counter()
    fx, fy = ffdata.get_trapfreq_HarmonicApprox(xlist, ylist, philist)
    toc = time.perf_counter()
    print(f"{fx}, {fy} /___/ calculated time is {toc- tic}")

    tic = time.perf_counter()
    flist = ffdata.get_trapfreq_Schrodinger(xlist, ylist, philist)
    toc = time.perf_counter()
    print(f"{flist} /___/ calculated time is {toc- tic}")

if __name__ == "__main__":
    main()