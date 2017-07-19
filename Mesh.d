module Mesh;

import std.stdio;
import Material;

class Mesh {

    Material material;
    int height = 1;     ///The height of the mesh
    int width1 = 1;     ///The longer width of the mesh
    int width2 = 1;     ///The shorter width of the mesh

    this(Material mat){
        material = mat;
    }

    /*
    Expands the mesh. Returns the number of materials used in the expansion.
    */
    int expandMesh(int hExpand, int w1Expand, int w2Expand, int matAvailable){
        int price = width1 * width2 * hExpand + height * width2 * w1Expand + height * width1 * w2Expand;
        if(price > matAvailable || !material.canExpandMesh([hExpand, w1Expand, w2Expand], this)){
            //Not enough materials.
            return 0;
        }
        else{
            height += hExpand;
            width1 += w1Expand;
            width2 += w2Expand;
        }
        resolveWidthOrder();
        return price;
    }

    /*
    Ensures that width1 is greater than or equal to width 2.
    */
    void resolveWidthOrder(){
        if(width2 > width1){
            int temp = width1;
            width1 = width2;
            width2 = temp;
        }
    }

    int getVolume(){
        return (material.height * height) * material.width * (width1 + width2);
    }

    int getWeight(){
        return cast(int)(getVolume() * material.density);
    }
}