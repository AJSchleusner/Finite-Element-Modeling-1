'''
    created by Niyaz B / January 13th, 2023
'''

import copy
import geopandas as gpd
import matplotlib.pyplot as plt
from tabulate import tabulate
from shapely import LineString, Polygon
from shapely import LineString, Polygon, get_coordinates, set_coordinates
from helpers2 import BLUE, GRAY, YELLOW, RED, GREEN, BLACK, DARKGRAY

color_list = [BLUE, YELLOW, RED, GREEN, GRAY, DARKGRAY]

class DXFreader():

    def __init__(self, filename: str):
        self.filename = filename
        self.geo_obj = gpd.read_file(self.filename)
        self.get_layers()
        self.organize_objs_by_layer()

    def get_layers(self) -> None:
        layer_info = self.geo_obj[['Layer']]
        layers = list(layer_info.iloc[:,0])
        
        self.num_obj = len(layers)
        self.unique_layers = list(set(layers))
        
        self.obj_num_list =[]
        for name in self.unique_layers:
            self.obj_num_list.append(layers.count(name))

        print(tabulate(zip(self.unique_layers, self.obj_num_list), headers=['Layer', 'Num Obj']))
    
    def plot_dxf(self, **kwargs):
        self.geo_obj.plot(**kwargs)
        plt.show()

    def plot_dxf_2(self,x1,x2,y1,y2, **kwargs):
        self.geo_obj.plot(**kwargs)
        plt.xlim(x1,x2)
        plt.ylim(y1,y2)
    
    def convert_to_polygon(self, line: LineString) -> Polygon:
        coords = list(line.coords)
        if coords[0] == coords[-1]:
            return Polygon(coords)
        else:
            errorMessage = 'LineString is not closed! check your dxf file and close objects'
            plt.plot(*line.xy)
            plt.title(errorMessage)
            plt.show()
            raise PolygonConverterError(errorMessage)

    def convert_all_to_polygon(self, list_of_lines: list) -> list:
        all_polygons =[]
        for item in list_of_lines:
            all_polygons.append(self.convert_to_polygon(item))
        return all_polygons

    def organize_objs_by_layer(self):

        # create a dictionary with layers as KEY and list of polygons as VALUE

        LayersGeoms = self.geo_obj[['Layer', 'geometry']]
        value = lambda layer_name: list(LayersGeoms[LayersGeoms['Layer']==layer_name].iloc[:,1])
        self.objects_original = {key: self.convert_all_to_polygon(value(key)) for key in self.unique_layers}
        self.objects = copy.deepcopy(self.objects_original)
    
    def remove_empties(self, polygons: list) -> list:
        return [polygon for polygon in polygons if not polygon.is_empty]
    
    def objects_in_box(self, box: list):
        bbox = Polygon(box)
        bboxing = lambda polygons: [bbox.intersection(polygon) for polygon in polygons]
        self.objects_original = dict((key, self.remove_empties(bboxing(value))) for key, value in self.objects.items())
        self.objects = copy.deepcopy(self.objects_original)

    def update_objects(self, layer: str, obj_index: int, polygon: Polygon) -> None:
        self.objects[layer][obj_index] = polygon

    def parametrize_coords(self, layer: str, obj_index: int, points: dict):
        object = self.objects_original[layer][obj_index]
        coords = get_coordinates(object)
        points_to_be_changed = list(points.keys())
        for point in points_to_be_changed:
            coords[point, 0] = coords[point, 0] + points[point]['x']
            coords[point, 1] = coords[point, 1] + points[point]['y']
        self.objects[layer][obj_index] = set_coordinates(object, coords)
        #self.update_objects(layer, obj_index, set_coordinates(object, coords))

    def _default_ax(self):
        ax = plt.gca()
        ax.grid(True, alpha=0.3)
        ax.set_aspect("equal")
        return ax

    def plot_points(self, layer: str, obj_num: int, type='original', offset=0.05, ax=None, color=None, marker="o", **kwargs):
        if ax is None:
            ax = self._default_ax()

        if type=='original':
            polygons = self.objects_original.get(layer)
        elif type=='updated':
            polygons = self.objects.get(layer)
        else:
            raise TypeError("Only 'original' or 'updated' types are allowed")

        coords = get_coordinates(polygons[obj_num])
        ax.plot(coords[:, 0], coords[:, 1], linestyle="", marker=marker, color=color, **kwargs)
        for i in range(len(coords)):
            ax.text(coords[i, 0]+offset, coords[i, 1]+offset, str(i), color=BLACK, fontsize=7)

    def plot_objects(self, layers: list, colors: list, type='original', ax=None, show_centroid=False, fill=True) -> None:
        l_list = self.unique_layers if layers==['all'] else layers
        
        if ax is None:
            ax = self._default_ax()

        for l, c in zip(l_list, colors):
            
            if type=='original':
                polygons = self.objects_original.get(l)
            elif type=='updated':
                polygons = self.objects.get(l)
            else:
                raise TypeError("Only 'original' or 'updated' types are allowed")

            poly_index = 0
            for polygon in polygons:
                if fill:
                    ax.fill(*polygon.exterior.xy, alpha=0.2, fc=c, ec='none')
                ax.plot(*polygon.exterior.xy, color=c)
                if show_centroid:
                    xy = list(polygon.centroid.coords)
                    ax.text(*xy[0], poly_index, color=c)
                    poly_index += 1
    
class PolygonConverterError(Exception):
    pass

def main():
    chip = DXFreader('test.dxf')
    chip.plot_dxf()

if __name__=="__main__":
    main()