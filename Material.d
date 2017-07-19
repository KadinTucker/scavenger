module Material;

import std.stdio;
import Mesh;

abstract class Material {

    int height;
    int width;
    int strength;
    double density;
    bool toolHeadMaterial;
    bool toolRodMaterial;

    this(int h, int w, int s, double d){
        height = h;
        width = w;
        strength = s;
        density = d;
    }

    abstract bool canExpandMesh(int[] meshArgs, Mesh mesh);

}

class Branch : Material {

    this(){
        super(10, 1, 2, 0.7);
        toolHeadMaterial = false;
        toolRodMaterial = true;
    }

    override bool canExpandMesh(int[] meshArgs, Mesh mesh){
        if(mesh.height + meshArgs[0] > 3 && mesh.width1 + meshArgs[1] > 3 && mesh.width2 + meshArgs[2] > 3)
        {
            return false;
        }
        return true;
    }
}

class Plank : Material {

    this(){
        super(2, 2, 2, 0.7);
        toolHeadMaterial = false;
        toolRodMaterial = true;
    }

    override bool canExpandMesh(int[] meshArgs, Mesh mesh){
        if(mesh.height + meshArgs[0] > 10 || mesh.width1 + meshArgs[1] > 10 || mesh.width2 + meshArgs[2] > 10)
        {
            return false;
        }
        return true;
    }
}


class Flint : Material {

    this(){
        super(3, 3, 10, 2.7);
        toolHeadMaterial = true;
        toolRodMaterial = false;
    }

    override bool canExpandMesh(int[] meshArgs, Mesh mesh){
        if(mesh.height + meshArgs[0] + mesh.width1 + meshArgs[1] + mesh.width2 + meshArgs[2] > 9)
        {
            return false;
        }
        return true;
    }
}

