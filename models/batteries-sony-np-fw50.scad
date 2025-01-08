include <../gridfinity-rebuilt-openscad/gridfinity-rebuilt-bins.scad>

// --- Settings for Gridfinity Rebuilt OpenSCAD ---
gridx=1;
gridy=2;
gridz=3;
style_hole = 1; // 1: magnet holes
// ------------------------------------------------

battery_radius=7.8;
module fw50(){
           translate([5,5,0]) rounded_rectangle(15,9,1,1);
           translate([0, 0, 1]) rounded_rectangle(32,19,20,3);
    }
difference(){
    renderGridfinityBase();
    
    translate([0,0,6])
    union(){
        
        translate([0, 30, 0])  fw50();
        translate([0, -30, 0]) fw50();;
        translate([0, 10, 0])  fw50();;
        translate([0, -10, 0]) fw50();;
    }
}