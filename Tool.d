module tool;

import std.stdio;
import std.math;
import Mesh;

class Tool {

    Mesh rod;
    Mesh head;

    this(Mesh r, Mesh h){
        rod = r;
        head = h;
    }

    /*
    Tool strength is based on the leverage (length) of the rod, the strength of the rod, the strength of the head
    and the total weight of the tool.
    */
    int getToolStrength(){
        return rod.height * (rod.material.strength / 2) * head.material.strength * (rod.getWeight + head.getWeight);
    }

    /*
    Tool durability is based on the strength of the tool rod, the tool head, and the width of the tool rod.
    */
    int getToolDurability(){
        return rod.material.strength * rod.width1 * rod.width2 * (head.material.strength / 2);
    }

    int getPickPower(){
        return 2 * head.width1 - (head.height + head.width2);
    }

    int getBladePower(){
        return 2 * head.height - (head.width1 + head.width2);
    }

    int getAxePower(){
        return (12 * head.height + head.width1 - head.width2 - abs(head.height - head.width1)) / 7;
    }

    int getHoePower(){
        return (12 * head.width1 + head.width2 - head.height - abs(head.width1 - head.width2)) / 7;
    }

    int getHammerPower(){
        return 12 - abs(head.height - head.width1) - abs(head.height - head.width2) - abs(head.width1 - head.width2);
    }
}