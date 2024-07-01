include <../gridfinity-rebuilt-openscad/gridfinity-rebuilt-bins.scad>
include <../gridfinity-rebuilt-openscad/generic-helpers.scad>

gridx=1;
gridy=1;
gridz=3;
style_hole = 1; // 1: magnet holes

battery_radius=7.8;
difference(){
    renderGridfinityBase();
    
    translate([0,0,6])
    rotate([0,0,45])
    union(){
        rounded_rectangle(39, 16, 20, 3);
    }
}