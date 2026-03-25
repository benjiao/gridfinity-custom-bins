use <../../gridfinity-rebuilt-openscad/gridfinity-rebuilt-bins.scad>

length = 47;
gridx = 4;
gridy = 1.5;
style_plate = 0;

gridfinityInit(gridx, gridy, height(6), 0, length) {
    cutEqual(n_divx = 1, n_divy = 1, style_tab = 5, scoop_weight = 1, length=47);
}
gridfinityBase(gridx, gridy, length, 0, 0, 1);