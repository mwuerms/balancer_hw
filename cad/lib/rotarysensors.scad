/**
 * Martin Egli
 * 2026-03-24
 * electronics
 */

module pcbAS5600_mount_holes_cut(cut_dia = 3.5, cut_len = 10, loc_res = 32) {
    a = (19.7+12.4)/2/2;
    translate([+a,+a, 0])
    cylinder(d = cut_dia, h = cut_len, $fn = loc_res);
    translate([+a, -a, 0])
    cylinder(d = cut_dia, h = cut_len, $fn = loc_res);
    translate([-a, +a, 0])
    cylinder(d = cut_dia, h = cut_len, $fn = loc_res);
    translate([-a, -a, 0])
    cylinder(d = cut_dia, h = cut_len, $fn = loc_res);
}
//pcbAS5600_mount_holes_cut();

module pcbAS5600_pcb(pcb_th = 1.5, loc_res = 32) {
    a = 23/2;
    r1 = 3;
    hull() {
        translate([+(a-r1), +(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([+(a-r1), -(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([-(a-r1), +(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([-(a-r1), -(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
    }
}
//pcbAS5600_pcb();

module pcbAS5600_pcb_cut(pcb_th = 2, loc_res = 32) {
    a = (23+1)/2;
    r1 = 3;
    hull() {
        translate([+(a-r1), +(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([+(a-r1), -(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([-(a-r1), +(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([-(a-r1), -(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
    }
}
//pcbAS5600_pcb_cut();

module pcbAS5600_pcb_cut2(pcb_th = 2, loc_res = 32) {
    a = (23+1)/2;
    r1 = 3;
    hull() {
        translate([+(a-r1), +(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([+(a-r1), -(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([-(a-r1), +(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([-(a-r1), -(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
    }
    translate([-10/2, -24/2, 0])
    cube([10, 24, 3]);
    translate([-24/2, -10/2, 0])
    cube([24, 10, 3]);
}
//pcbAS5600_pcb_cut2();

module pcbMT6701_mount_holes_cut(cut_dia = 3.1, cut_len = 10, loc_res = 32) {
    a = (17)/2;
    translate([+a,+a, 0])
    cylinder(d = cut_dia, h = cut_len, $fn = loc_res);
    translate([+a, -a, 0])
    cylinder(d = cut_dia, h = cut_len, $fn = loc_res);
    translate([-a, +a, 0])
    cylinder(d = cut_dia, h = cut_len, $fn = loc_res);
    translate([-a, -a, 0])
    cylinder(d = cut_dia, h = cut_len, $fn = loc_res);
}
//pcbMT6701_mount_holes_cut();

module pcbMT6701_pcb(pcb_th = 1.5, loc_res = 32) {
    a = 23/2;
    r1 = 3;
    hull() {
        translate([+(a-r1), +(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([+(a-r1), -(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([-(a-r1), +(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([-(a-r1), -(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
    }
}
//pcbMT6701_pcb();

module pcbMT6701_pcb_cut(pcb_th = 2, loc_res = 32) {
    a = (23+1)/2;
    r1 = 3;
    hull() {
        translate([+(a-r1), +(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([+(a-r1), -(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([-(a-r1), +(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
        translate([-(a-r1), -(a-r1), 0])
        cylinder(r = r1, h = pcb_th, $fn = loc_res);
    }
}
//pcbMT6701_pcb_cut();

module pcbMT6701(loc_res = 32) {
    difference() {
        union() {
            color("Gray")
            translate([0, 0, 0])
            pcbAS5600_pcb();
            // SOIC-8 4*5 mm
            color("DarkGray")
            translate([-2, -2.5, 1.5])
            cube([4, 5, 1]);
        }
        translate([0, 0, -1])
        pcbMT6701_mount_holes_cut();
    }
}
//pcbMT6701();

module pcbbal01MA702Q(loc_res = 32) {
    th = 1.6;
    // PCB
    color("Green")
    difference() {
        hull() {
            translate([+17.0, -5.8, 0])
            cylinder(r = 4, h = th, $fn = loc_res);
            translate([+17.0, +5.8, 0])
            cylinder(r = 4, h = th, $fn = loc_res);
            translate([-5.8, -5.8, 0])
            cylinder(r = 4, h = th, $fn = loc_res);
            translate([-5.8, +5.8, 0])
            cylinder(r = 4, h = th, $fn = loc_res);
        }
        // cut M3 holes
        hull() {
            translate([+6.8, +6.8373, -1])
            cylinder(d = 3.2, h = th+2, $fn = loc_res);
            translate([+5.7127, +5.75, -1])
            cylinder(d = 3.2, h = th+2, $fn = loc_res);
        }
        hull() {
            translate([+6.8, -6.8373, -1])
            cylinder(d = 3.2, h = th+2, $fn = loc_res);
            translate([+5.7127, -5.75, -1])
            cylinder(d = 3.2, h = th+2, $fn = loc_res);
        }
        hull() {
            translate([-6.8, +6.8373, -1])
            cylinder(d = 3.2, h = th+2, $fn = loc_res);
            translate([-5.7127, +5.75, -1])
            cylinder(d = 3.2, h = th+2, $fn = loc_res);
        }
        hull() {
            translate([-6.8, -6.8373, -1])
            cylinder(d = 3.2, h = th+2, $fn = loc_res);
            translate([-5.7127, -5.75, -1])
            cylinder(d = 3.2, h = th+2, $fn = loc_res);
        }
    }
    
    // sensor
    color("DarkGray")
    translate([-3.2/2, -3.2/2, th])
    cube([3.2, 3.2, 1.2]);
    
    // LDO SOT-23
    color("DarkGray")
    translate([12.4, 5.1, th])
    translate([-3.2/2, -1.6/2, 0])
    cube([3.2, 1.6, 1.2]);
    
    // cable
    color("Black")
    translate([17.5, 0, th+4/2])
    rotate([0, 90, 0])
    cylinder(d = 4, h = 10, $fn = loc_res);
}
*pcbbal01MA702Q();

module pcbbal01MA702Q_cut(loc_res = 32) {
    th = 1.6;
    // PCB
    translate([0, 0, -3])
    hull() {
        translate([+17.0, -5.8, 0])
        cylinder(r = 4.2, h = th+3, $fn = loc_res);
        translate([+17.0, +5.8, 0])
        cylinder(r = 4.2, h = th+3, $fn = loc_res);
        translate([-5.8, -5.8, 0])
        cylinder(r = 4.2, h = th+3, $fn = loc_res);
        translate([-5.8, +5.8, 0])
        cylinder(r = 4.2, h = th+3, $fn = loc_res);
    }
    
    // sensor -> center hole upwards
    translate([0, 0, 0])
    cylinder(d = 8, h = 10, $fn = loc_res);

    // LDO SOT-23
    hull() {
        translate([10, 5, th])
        rotate([0, 90, 0])
        cylinder(d = 5, h = 5, $fn = loc_res);    
        translate([10, 0, th])
        rotate([0, 90, 0])
        cylinder(d = 5, h = 5, $fn = loc_res);    
    }
    // cable
    hull() {
        translate([10, +(7-5)/2, th+5/2])
        rotate([0, 90, 0])
        cylinder(d = 5, h = 11.2, $fn = loc_res);
        translate([10, -(7-5)/2, th+5/2])
        rotate([0, 90, 0])
        cylinder(d = 5, h = 11.2, $fn = loc_res);
        translate([10, -7/2, 0])
        cube([11.2, 7, 1]);
    }    
}
pcbbal01MA702Q_cut();
