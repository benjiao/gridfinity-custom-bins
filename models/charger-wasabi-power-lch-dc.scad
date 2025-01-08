include <../gridfinity-rebuilt-openscad/gridfinity-rebuilt-bins.scad>

// --- Settings for Gridfinity Rebuilt OpenSCAD ---
gridx=1;
gridy=2;
gridz=3;
style_hole = 1; // 1: magnet holes
// ------------------------------------------------

battery_radius=7.8;

difference(){
    renderGridfinityBase();
    
    translate([0,0,6])
    union(){
        rounded_rectangle(25,75,40,3);
    }
}