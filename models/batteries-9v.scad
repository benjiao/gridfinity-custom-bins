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
        translate([0, 30, 0])   rounded_rectangle(27,18,20,3);
        translate([0, -30, 0])   rounded_rectangle(27,18,20,3);
        translate([0, 10, 0])   rounded_rectangle(27,18,20,3);
        translate([0, -10, 0])   rounded_rectangle(27,18,20,3);
    }
}