/**
 * Martin Egli
 * 2026-05-03
 * electronics
 */

module pcbnRF14L01SMDModule(loc_res = 32) {
    color("Black") {
        // PCB
        translate([0, 0, 0])
        cube([12.0, 18.0, 1.5]);
        // MCU
        translate([4.5-4/2, 5-4/2, 1.5])
        cube([4, 4, 1]);
    }
    color("Silver") {
        // XTAL
        translate([10-2.6/2, 5.5-4/2, 1.5])
        cube([2.6, 4, 1]);
    }
    color("Gold") {
        // connectors
        for(n = [0:1:7]) {
            translate([1.6+n*2.54/2, 0.9, -0.05])
            hull() {
                translate([0, 0, 0])
                cylinder(d = 1, h = 1.6, $fn = loc_res);
                translate([0, -0.4, 0])
                cylinder(d = 1, h = 1.6, $fn = loc_res);
            }
        }
        // Antenna
        hull() {
            translate([0.5+1.2*0, 10, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([0.5+1.2*0, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
        hull() {
            translate([0.5+1.2*0, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([0.5+1.2*1, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
        hull() {
            translate([0.5+1.2*1, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([0.5+1.2*1, 10+4.0, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
        hull() {
            translate([0.5+1.2*1, 10+4.0, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([0.5+1.2*2, 10+4.0, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
        hull() {
            translate([0.5+1.2*2, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([0.5+1.2*2, 10+4.0, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
        hull() {
            translate([0.5+1.2*2, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([0.5+1.2*3, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
        hull() {
            translate([0.5+1.2*3, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([0.5+1.2*3, 10+4.0, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
        hull() {
            translate([0.5+1.2*3, 10+4.0, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([0.5+1.2*4, 10+4.0, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
        hull() {
            translate([0.5+1.2*4, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([0.5+1.2*4, 10+4.0, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
        hull() {
            translate([0.5+1.2*4, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([0.5+1.2*5, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
        hull() {
            translate([0.5+1.2*5, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([0.5+1.2*5, 10+4.0, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
        hull() {
            translate([0.5+1.2*5, 10+4.0, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([0.5+1.2*6, 10+4.0, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
        hull() {
            translate([0.5+1.2*6, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([0.5+1.2*6, 10+4.0, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
        hull() {
            translate([0.5+1.2*6, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([0.5+1.2*9, 10+7.3, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
        hull() {
            translate([0.5, 11.5, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
            translate([7.3, 11.5, 1.5])
            cylinder(d = 0.6, h = 0.01, $fn = loc_res);
        }
    }
}
pcbnRF14L01SMDModule();
