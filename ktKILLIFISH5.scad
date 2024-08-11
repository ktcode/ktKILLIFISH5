//
// ktKILLIFISH5
//

gap1 = 0.001;
gap2 = 0.002;
th = 2;
thb = 1;

PR = 13;
PRB = PR+th*2;
SPR = 8;
SPRB = SPR+th*2;
PH = 40;
AN = 10;
L1 = 10;
MH = 30;

//main();
main2();

module main()
{
difference()
{   
    union()
    {
        color("blue") translate([0, 0, PRB/2]) rotate([0, 90, 0]) cylinder(r=PRB/2, h=20, $fn=100);
        translate([0, 0, 0]) rotate([90, -90, 0]) rotate_extrude(angle=AN, convexity=10, $fn=100) translate([PRB/2, 0, 0]) circle(PRB/2);
        rotate([0, -90-10, 0]) translate([PRB/2, 0, 0]) cylinder(r=PRB/2, h=PH, $fn=100);
        
        translate([-50, 0, 0]) resize(newsize=[35, 50, 35]) sphere(r=10, $fn=200);
    }
    translate([0, 0, PRB/2]) rotate([0, 90, 0]) cylinder(r1=PR/2, r2=PR/2+0.5, h=20+gap2, $fn=100);
    translate([0, 0, 0]) rotate([90, -90, 0]) rotate_extrude(angle=AN+1, convexity=10, $fn=100) translate([PR/2+th, 0, 0]) circle(PR/2);
    rotate([0, -90-10, 0]) translate([PRB/2, 0, 0]) cylinder(r=PR/2, h=PH+gap2, $fn=100);
    
    translate([-50, 0, 0]) resize(newsize=[35-th*2, 50-th*2, 35-th*2]) sphere(r=10, $fn=200);
    translate([-100, 15, -50]) cube([100, 50, 100]);
    translate([-100, -50-15, -50]) cube([100, 50, 100]);
    
    translate([-50, 0, 0]) resize(newsize=[35-th*2, 60-th*2, 35-th*2]) sphere(r=10, $fn=200);   
}
}


module main2()
{
difference()
{   
    union()
    {
        color("blue") translate([0, 0, 0]) rotate([0, 90, 0]) cylinder(r=PRB/2, h=20, $fn=100);
        rotate([0, -90-0, 0]) translate([0, 0, 0]) cylinder(r=PRB/2, h=PH, $fn=100);
        
        translate([-30, 0, 0]) resize(newsize=[45, 50, 45]) sphere(r=10, $fn=200);
        
        translate([-30, 0, 10]) rotate([0, -90, 0]) cylinder(r=SPRB/2, h=PH, $fn=100);
    }
    translate([0, 0, 0]) rotate([0, 90, 0]) cylinder(r1=PR/2, r2=PR/2+0.5, h=20+gap2, $fn=100);
    rotate([0, -90-0, 0]) translate([-gap1, 0, 0]) cylinder(r=PR/2, h=PH+gap2, $fn=100);
    
    translate([-30, 0, 0]) resize(newsize=[45-th*2, 50-th*2, 45-th*2]) sphere(r=10, $fn=200);
    translate([-100, 15, -50]) cube([100, 50, 100]);
    translate([-100, -50-15, -50]) cube([100, 50, 100]);   
   
    translate([-30, 0, 10]) rotate([0, -90, 0]) cylinder(r=SPR/2, h=PH+gap2, $fn=100); 
}
translate([-2.5, 0, 0]) cube([15, PRB-th, th], center=true);
translate([-60, 0, 10]) cube([20, SPR, th], center=true);
}

