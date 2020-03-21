/*linear_extrude(height = 10, center = true, convexity = 10, twist = 0)
difference() {
circle(d=115);
circle(d=90);
translate([10, -120, 0]) square(250); 
}
*/
$fn = 100;
difference() {
rotate([-90,0,-20]) translate([0,0,0]) cylinder(5,30,25); 
rotate([0,0,-20]) translate([0,12,0]) cube([16,21,11,],true);

}