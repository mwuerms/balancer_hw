/**
 * Martin Egli
 * 2026-05-03
 * electronics
 */
use <nucleo32.scad>
use <mpu.scad>
use <nrf24L01Module.scad>
use <electronics_parts.scad>

module pad_2x1_6mm(rotz = 0, loc_res = 32) {
    rotate([0, 0, rotz])
    hull() {
        translate([-0.8, 0, 0])
        cylinder(d = 2, h = 1.6, $fn = loc_res);
        translate([+0.8, 0, 0])
        cylinder(d = 2, h = 1.6, $fn = loc_res);
    }
}

module pcbbal02(show_components = 1, loc_res = 32) {
    difference() {
        union() {
            // PCB
            color("Green")
            translate([0, 0, 0])
            cube([63, 37.5, 1.5]);
            // THT battery connectors
            translate([2.0, 4.0, -0.05])
            pad_2x1_6mm(0, loc_res = loc_res);
            translate([2.0, 4.0-2.54, -0.05])
            pad_2x1_6mm(0, loc_res = loc_res);
            translate([2.0, 10.0, -0.05])
            pad_2x1_6mm(0, loc_res = loc_res);
            translate([2.0, 10.0-2.54, -0.05])
            pad_2x1_6mm(0, loc_res = loc_res);
            
            // THT bldc connectors
            translate([10.0, 2.0, -0.05])
            pad_2x1_6mm(90, loc_res = loc_res);
            translate([10.0+2.54, 2.0, -0.05])
            pad_2x1_6mm(90, loc_res = loc_res);
            translate([23.0, 2.0, -0.05])
            pad_2x1_6mm(90, loc_res = loc_res);
            translate([23.0+2.54, 2.0, -0.05])
            pad_2x1_6mm(90, loc_res = loc_res);
        }        
        // cut holes
        translate([0.2, 18.7, 0])
        pcbNucleo32_header_holes(loc_res = loc_res);
        // M3
        translate([4.0, 15.0, -1])
        cylinder(d = 3.2, h = 5, $fn = loc_res);
        translate([33.5, 15.0, -1])
        cylinder(d = 3.2, h = 5, $fn = loc_res);
        translate([39.8, 4.8, -1])
        cylinder(d = 3.2, h = 5, $fn = loc_res);
        translate([59.7, 4.8, -1])
        cylinder(d = 3.2, h = 5, $fn = loc_res);
        // THT battery connectors
        translate([2.0, 4.0, -1])
        cylinder(d = 1, h = 5, $fn = loc_res);
        translate([2.0, 4.0-2.54, -1])
        cylinder(d = 1, h = 5, $fn = loc_res);
        translate([2.0, 10.0, -1])
        cylinder(d = 1, h = 5, $fn = loc_res);
        translate([2.0, 10.0-2.54, -1])
        cylinder(d = 1, h = 5, $fn = loc_res);
        
        // THT bldc connectors
        translate([10.0, 2.0, -1])
        cylinder(d = 1, h = 5, $fn = loc_res);
        translate([10.0+2.54, 2.0, -1])
        cylinder(d = 1, h = 5, $fn = loc_res);
        translate([23.0, 2.0, -1])
        cylinder(d = 1, h = 5, $fn = loc_res);
        translate([23.0+2.54, 2.0, -1])
        cylinder(d = 1, h = 5, $fn = loc_res);
    }

    if(show_components) {
        translate([0.2, 18.7, 1.5])
        pcbNucleo32(loc_res = loc_res);
        translate([62.8, 16.8, 1.5])
        rotate([0, 0, 180])
        pcbMPU9250(loc_res = loc_res);
        translate([50.9, 19.4, 1.5])
        pcbnRF14L01SMDModule(loc_res = loc_res);
        translate([11.5, 4.5, 1.5+6.3/2])
        rotate([-90, 0,0 ])
        cap6_3x11mm(loc_res = loc_res);
        translate([24.5, 4.5, 1.5+6.3/2])
        rotate([-90, 0,0 ])
        cap6_3x11mm(loc_res = loc_res);
    }
}
pcbbal02(show_components = 1);
