// Meike MK-S-AF3B

include <../gridfinity-rebuilt-openscad/gridfinity-rebuilt-bins.scad>
include <../gridfinity-rebuilt-openscad/generic-helpers.scad>

gridx=1;
gridy=2;
gridz=3;
style_hole = 1; // 1: magnet holes

difference(){
    renderGridfinityBase();
    
    translate([0,0,6])
    union(){
        translate([-16,0,32])
        rotate([0,90,0])
        cylinder(32, r=31);
        
    }
}

translate([-13,-36,21])
linear_extrude(2)
text("MACRO", size=5);