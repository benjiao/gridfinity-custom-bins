include <../../gridfinity-rebuilt-openscad/gridfinity-rebuilt-bins.scad>

length = 47;
gridx = 6;
gridy = 1.5;
height = 6;
style_plate = 0;

bin = new_bin([gridx, gridy], fromGridfinityUnits(6));

// Centered custom sized compartment.
bin_render(bin) {
    bin_translate(bin, [0.5, 0.5])
    compartment_cutter([10, 20,cgs().z]);
}