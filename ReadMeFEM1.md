# Finite Element Modeling (1)

These steps in the finite element modeling (FEM) process were used for channel electron 
density calculations in the high frequency Wigner crystal paper. However, many of these 
files are adaptations of earlier FEM work on our microchannel device. My naming 
convention of a "mch25" suffix is used to denote that these files were 2025 versions of
code made with the original microchannel device in our lab.

I believe that all of the necessary components to run these files are here. As you have 
likely noted, the files named 'Step-#' are largely sequential and depend upon each other.
A rundown of the different steps and how they are applied is as follows:

## Step 1: 2D geometry
Originally, I created the 2D footprint of our microchannel device in Autocad (.dwg and 
.dxf). I believe this was an adaptation from files that Niyaz and Camille made back when 
the device was first being planned and fabricated. The benefit of laying out the device 
in Autocad was that I was then able to see where I would need to make nodes in my 
geometry file (.geo) to avoid the issues of having lines that cross each other (which 
throws an error).

## Step 2: 3D geometry
I think there are faster ways to create the 3D geometry file (.geo) than the method that
I chose. In making the geo file, I needed to define some general lengths as variables 
for quick adjustments if necessary and the densities of the later mesh for each give 
point. After doing this, my geo files are organized such that the thousands-place digit 
in the naming scheme corresponds to a vertical layer (like level of a building). The 
even-thousands layers are where I have a version of my 2D geometry (.dwg or .dxf) 
placed. The odd-thousands layers are where I define the vertical lines connecting the 
neighboring 2D geometry layers (the 1000 indexed series connects the 0000 and 2000 
series features). The hundreds places are used to index different features within a 
layer. For example, the points, lines, curve loops, and plane surfaces, of the 0100 
series are all relating to the left reservoir electrode and features within it on the 
bottom level (hence the zero in the thousands-place) of the later 3D mesh. To try and 
keep things organized, when I needed to make the next layer up version of the 2D 
geometry (2000 series), I used the same numbers of the ones, tens, and hundreds places 
to represent the same feature in the upper layer (point 2001 is directly above point 
0001). When I define lines between layers, I gave the line the name of the correct 
thousands-place and the ones, tens, and hundreds place of the points it was connecting. 
So line 1001 is connecting points 0001 and 2001. This indexing was very annoying to 
implement, but it made correcting errors in my geometry FAR more manageable than if I 
did not carefully index. Note that when you make a geo file, lines and curve loops are 
directionally dependent. So for your curve loop to work correctly, you need every line 
to be correctly placed in both the order around the curve loop and the lines being 
aligned tip-to-tail. If you need to run against the direction that you defined your 
line, you need to add a negative sign to its number name when you call to it in your 
curve loop. The different versions of my Step-2 geometries that exist for mch25 are all 
the same except for changing the points' densities to make a finer or more coarse mesh 
when called in Step-3.

## Step 3: 3D mesh
If Step-2 was done correctly, Step-3 is easy and completely automated. To create a full 
mesh of the geometry in step 2, I opened the software "gmsh" and went to "file" and 
"open" to open my geo file. This will result in the geometry appearing as a wire frame 
of the lines and points that were defined in Step-2. This can then be turned into the 3D 
mesh file by then going to the side menu and selecting 3D under the mesh category. To 
save the file you just need to click "save" near the bottom of this side menu. Note, if 
you make a very dense mesh, it may crash gmsh or take a long time for it to be built. So 
if you are making a mesh for a first-time pass through the modeling, it is worth making 
the mesh not very dense. In the end, your saved file will appear as a pretty large .msh 
file.

## Step 4: 3D FEM script
Once you have a mesh, you can create a 3D FEM script that will be used to conduct the 
finite element modeling of your mesh. These scripts are .edp files and are written using 
c++ syntax. In the 3D FEM that I conduct here, I am using my mesh to get coupling 
constants between the different electrodes of my geometry and the layer of electrons in 
the channel. This is done by solving the weak formulation of the Poisson equation. In my 
FEM scripts, I call this equation "Electro" as it gives the electric potential "u" as 
the output. The variable "v" is the test variable in the problem formulation. This u can 
be applied directly at specified points to provide the potential, or spatial derivatives 
can be performed on it to the electric field. In some of my Step-4 scripts I calculate 
the electric field, while in others I do not. As it currently stands, I collect coupling 
constants (alphas) for the device electrodes and output the spatial coordinates of those 
alphas (x,y) in txt files in all of my Step-4 scripts. To run the script and get these 
output txt files, you need to open the Step-4 edp file in the application FreeFem++. As 
you would expect, the more dense of a mesh you make or the more things you have your 
script do, the longer it will take for your script to run in FreeFem.  

## Step-5: 3D FEM analysis
To analyze the output txt files of the Step-4 script being ran in FreeFem, I created a 
jupyter notebook (.ipynb).  The Step-5 notebook is not my most polished work, but it is 
sufficient for viewing the coupling between the different electrodes and the layer at 
which the electrons live.  I say that layer since usually I calculate the coupling 
constants to an area wider and longer than the  electron sheet itself.  If you multiply 
the coupling constants by the electrodes' voltages and then take a sum of these values, 
you can get an approximation of the electric potential at the electron layer of your 
device.  If you want to get more speculative like I did, you can go from this potential 
to an approximation of the electron sheet's effective width and the areal density of 
electrons within the sheet.  While this does provide a good estimate of the values for 
the width and the electron density, I believe this is more accurately done in the 2D FEM 
steps that follow this one.

## Step-6: 2D FEM script
In conducting 2D FEM along a cross-sectional slice of the channel, both the geometry and 
the mesh are directly created within the FEM script. I suppose that the same could have 
been done for the 3D case, but breaking it up into multiple documents that can be 
checked independently makes error checking easier. In my Step-6 script, I create the 2D 
geometry using the "border" definition and then define the different dielectric 
constants for the different areas of the 2D space. Since I want to control the length of 
the electron cloud ("ecloud") in my geometry, the borders are adjusted at multiple 
places in my code.  Each time the borders are changed, it is necessary to again build 
the mesh and solve the Poisson equation. I do this once at the start such that I can get 
the coupling constant to the bottom "channel" electrode which is then used to get the 
chemical potential of the electron system (this requires plugging in a channel voltage 
threshold, Vchth, that is taken from the experimental data). I then define functions for 
calculating the x-axis (across channel width) electric field and the capacitance between 
the 1D electron sheet and the electrodes. I then use a large for-loop to loop over the 
bias voltages applied to the channel electrode.  Within this for-loop, the method of 
bisection is used to find at what x-position the x-axis electric field is zero. This 
point is the edge of the electron cloud and thus gives the effective width. This 
effective width is then used to inform a rebuilding of the mesh with an ecloud set to 
that width. The solution of this mesh's Poisson equation is used to then calculate the 
electron density, spacing, row count, and x and z axis electric fields. To allow for 
when the electron cloud has no width, This analysis done after calculating the effective 
width is split into an if and else statement. The purpose of doing this was to prevent 
the mesh from creating an ecloud line of zero width as such a line would throw an error. 
Like in the case of the Step-4 script, this script is ran in FreeFem++ and outputs txt 
files. I will note that the electric field txt files are functionally 3D matrices (axes: 
x, z, Vch) that are unwrapped into crazy arrays in the txt files. For example, right now 
my z-axis electric field matrix is 1000 x 600 x 43 which results in an unwrapped array 
that ends up being 4 columns and 25.8 million rows (the file is about 600MB).

## Step-7: 2D FEM analysis
Again, I use a jupyter notebook to analyze the txt outputs of the FreeFem script. Since 
FreeFem does not allow me to output matrices of more than 2 dimensions to a txt, the 3D 
electric field matrices are in the disgusting list form that I mentioned in Step-6. 
Therefore, when I import the txt files to this jupyter notebook, I also process the 
electric fields to have the shape of the intended large 3D matrices. Outside of the 
necessary reshaping, this notebook is only used for plotting data. Unlike in Step-5, the 
effective width and density values are already solved for in the FreeFem script. As far 
as I know, this cannot easily be done in the FreeFem script of Step-4 since it requires 
iterating the mesh. If I tried to iterate the large 3D meshes that I have here, then the 
script of Step-4 would take forever to run and produce output values. At the time of 
first pushing this code to GitHub, I do not have any analysis in Step-7. However, after 
looking into the applicable theory, I will likely do some analysis to derive values such 
as the electron mobility (mu) and the relaxation time (tau) in this notebook. 