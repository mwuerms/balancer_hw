/**
 * Martin Egli
 * 2026-02-22
 */

use <../lib/electronics_parts.scad>
use <../lib/mechanics_parts.scad>
use <../lib/parts.scad>
use <../lib/printparts.scad>
use <../lib/screws.scad>
use <../lib/g431b_esc1.scad>
use <../lib/rotarysensors.scad>

module elements(show_elements = 1, loc_res = 32) {
    if(show_elements) {
        translate([0, 0, 0])
        rotate([0, 0, 45])
        bldc5010_motor(0, loc_res = loc_res);
        translate([0, 0, -4.1])
        magnet_holder_5mm_v1_0(1, loc_res = loc_res);
        
        translate([0, 0, -8])
        rotate([0, 0, 90])
        pcbbal01MA702Q(loc_res = loc_res);
        
        translate([17.8/2, 40, 1])
        g431b_esc1_stlink_pcb_model();
    }
}
*elements();

module bal02teststand01(show = 1, loc_res = 32) {
    difference() {
        union() {
            hull() {
                translate([0, 0, -10])
                cylinder(d = 26, h = 10, $fn = loc_res);
                translate([+(26-6)/2, 30, -10])
                cylinder(d = 6, h = 10, $fn = loc_res);
                translate([-(26-6)/2, 30, -10])
                cylinder(d = 6, h = 10, $fn = loc_res);
            }
            translate([-9, 30, -2])
            cube([18, 58, 2]);
            hull() {
                translate([+(26-6)/2, 85, -10])
                cylinder(d = 6, h = 10, $fn = loc_res);
                translate([-(26-6)/2, 85, -10])
                cylinder(d = 6, h = 10, $fn = loc_res);
            }
        }
        // cuts look into
        hull() {
            translate([+15, 0, -12])
            cylinder(d = 4, h = 10, $fn = loc_res);
            translate([-15, 0, -12])
            cylinder(d = 4, h = 10, $fn = loc_res);
        }
        
        // sensor cut
        translate([0, 0, -8])
        rotate([0, 0, 90])
        pcbbal01MA702Q_cut(loc_res = loc_res);
        // cable cut
        hull() {
            translate([0, 0, -(8-3.6)])
            rotate([-90, 0, 0])
            cylinder(d = 6, h = 100, $fn = loc_res);
            translate([0, 0, -12])
            rotate([-90, 0, 0])
            cylinder(d = 6, h = 100, $fn = loc_res);
        }
        // M3 screws cut
        translate([0, 0, -8])
        rotate([0, 0, 45])
        bldc5010_m3cut_stator(loc_res = loc_res);
        
        // cut for cables
        translate([-9.5, 64.5, -3])
        cube([3, 10, 4]);
        translate([-5, 71, -3])
        cube([12, 4, 4]);
        
        // cut wood screws
        translate([+(26-8)/2, 29, -11])
        cylinder(d = 4, h = 12, $fn = loc_res);
        translate([-(26-8)/2, 29, -11])
        cylinder(d = 4, h = 12, $fn = loc_res);
        translate([+(26-8)/2, 85, -11])
        cylinder(d = 4, h = 12, $fn = loc_res);
        translate([-(26-8)/2, 85, -11])
        cylinder(d = 4, h = 12, $fn = loc_res);
    }
    elements(show_elements = show, loc_res = loc_res);
}
*bal02teststand01(show = 0, loc_res = 128); // 1 x
magnet_holder_5mm_v1_0(0, 128); // 2 x