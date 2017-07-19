module Encyclopedia;

import std.stdio;

string[] keys = [

    "First Steps",

    "Meshes",

    "Creating Tools",

    "Tool Types",

    "What Comes Next?",

];
string[] entries = [

    "To start off, you will need to scavenge for some branches and rocks. You can then use them to create tools.",

    "After collecting some materials, you can start creating Meshes. Meshes are just materials grouped together
    to form a box. Meshes have length, and two width variables. To start, create a mesh of Branches that has a height
    of two and width of two.",

    "To create a tool, you will need a rod and a head. Rods cannot be wider than 3 and they cannot be longer than 40.
    Heads cannot have more than a total of 9 mesh volume. Rods can be made with Branch meshes and heads can be made with
    Flint meshes.",

    "To have an effective tool, you need to craft the mesh a certain way. Picks, for digging stone and ore, are best with
    width in one direction. Blades, for killing creatures and working with leather and meat, are best with only height.
    Axes, for working with wood, are best with height and width in one direction. Hoes, for irrigating soil, are best
    when wide in both directions. Hammers, for working with metal, are best when they have a balance of width and height.",

    "Now you can use your new tool to gather resources. If you made a pick, you can gather stone and create higher quality
    tool heads. If you made a blade, you can find some creatures to hunt and kill. If you made an axe, you can chop some
    wood and create better tool rods. If you made a hoe, you can till some soil and grow some food. If you made a hammer,
    you can start using it to place large meshes that you can make some shelter with.",

];