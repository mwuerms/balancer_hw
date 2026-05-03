/**
 * Martin Egli
 * 2026-05-03
 * electronics
 */

module pcbNucleo32(loc_res = 32) {
    *origin();
    color("White") {
        // PCB
        translate([0, 0, 2])
        cube([50.4, 18.6, 1.5]);
    }
    color("Black") {
        // MCU
        translate([24, 18.6/2-7/2, 2+1.5])
        cube([7, 7, 1]);
        // pin shroud
        translate([9-2.5/2, 1.7-2.5/2, 0])
        cube([2.5*15.5, 2.5, 2]);
        translate([9-2.5/2, 1.7+15.2-2.5/2, 0])
        cube([2.5*15.5, 2.5, 2]);
    }
    color("Silver") {
        // uUSB
        translate([0, 5.7, 2+1.5])
        cube([4, 7.2, 2]);
        // pins
        for(n = [0:1:15-1]) {
            translate([9+n*2.54, 1.7, -3])
            cylinder(d = 0.6, h = 10, $fn = loc_res);
            translate([9+n*2.54, 1.7+15.2, -3])
            cylinder(d = 0.6, h = 10, $fn = loc_res);
        }
    }
}
*pcbNucleo32();

module pcbNucleo32_header_holes(loc_res = 32) {
    for(n = [0:1:15-1]) {
        translate([9+n*2.54, 1.7, -5])
        cylinder(d = 1, h = 8, $fn = loc_res);
        translate([9+n*2.54, 1.7+15.2, -5])
        cylinder(d = 1, h = 8, $fn = loc_res);
    }
}
*pcbNucleo32_header_holes();
