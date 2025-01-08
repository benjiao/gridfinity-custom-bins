// Tested with Sigma 16mm f1.4, Sigma 56mm f1-4, and Sigma 18-50mm f2.8
include <../gridfinity-rebuilt-openscad/gridfinity-rebuilt-bins.scad>
include <../gridfinity-rebuilt-openscad/generic-helpers.scad>

gridx=2;
gridy=2;
gridz=4;
style_hole = 1; // 1: magnet holes

module lens_sigma56(){
 cylinder(26.5, r=31.5);
 translate([0, 0, 26.5]) cylinder(11.5, 31.5, 33);
 translate([0, 0, 26.5 + 11.5]) cylinder(25, r=34);
}

difference(){
    renderGridfinityBase();
    
    translate([0,0,6])
    union(){
        lens_sigma56();
    }
}

