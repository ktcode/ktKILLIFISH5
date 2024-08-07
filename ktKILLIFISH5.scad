//
// ktKILLIFISH5
//

gap1 = 0.001;
gap2 = 0.002;
th = 2;
thb = 1;

PR = 13;
PRB = PR+th*2;
MR = 80;
MH = 30;


main();
sub();

module main()
{
difference()
{   
    union()
    {
        translate([0, 0, 0]) rotate([0, 0, 0]) cylinder(r=MR/2, h=MH, $fn=100);
        
        translate([PRB/2, 0, 0]) rotate([-90, 90, 0]) rotate_extrude(angle=90, convexity=10, $fn=100) translate([PRB/2, 0, 0]) circle(PRB/2);
        translate([PRB/2, 0, -PRB/2]) rotate([0, 90, 0]) cylinder(r=PRB/2, h=MR/2, $fn=100);
        color("blue") translate([PRB/2+MR/2, 0, -PRB/2]) rotate([0, 90, 0]) cylinder(r=PRB/2, h=20, $fn=100);
    }
    translate([0, 0, thb]) rotate([0, 0, 0]) cylinder(r=MR/2-thb, h=MH-thb+gap2, $fn=100);
    
    translate([0, 0, -th-gap1]) rotate([0, 0, 0]) cylinder(r=PR/2, h=th*2+gap2, $fn=100);
    translate([PR/2, 0, -th]) rotate([-90, 90, 0]) rotate_extrude(angle=90, convexity=10, $fn=100) translate([PR/2, 0, 0]) circle(PR/2);
    translate([PRB/2-gap1-th, 0, -PRB/2]) rotate([0, 90, 0]) cylinder(r1=PR/2, r2=PR/2, h=MR/2+th+gap2, $fn=100);
    translate([PRB/2+MR/2-gap1, 0, -PRB/2]) rotate([0, 90, 0]) cylinder(r1=PR/2, r2=PR/2+0.5, h=20+gap2, $fn=100);
}
}


module sub()
{
difference()
{   
    union()
    {
        translate([0, 0, 0]) rotate([0, 0, 0]) cylinder(r=(MR+thb*2+1)/2, h=MH, $fn=100);
        
        translate([0, 0, 0]) rotate([0, 0, 0]) rotate_extrude(angle=360, convexity=10, $fn=100) translate([(MR+thb*2+1)/2, 0, 0]) polygon(points=[[0,0],[15,0],[10,5],[0,5]]);
    }
    translate([0, 0, -gap1]) rotate([0, 0, 0]) cylinder(r=(MR+thb*2+1)/2-thb, h=MH+gap2, $fn=100);
}
}
