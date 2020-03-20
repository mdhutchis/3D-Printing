Wall   = 1.5; // Wall thickness
//Inner Widths
Length = 70+Wall*2; // X axis
Width  = 19+Wall*2; // Y
Height = 22; // Z


difference(){
  cube([Length,Width,Height]);  
  translate([Wall,Wall,Wall]) {
    cube([Length-(Wall*2),Width-(Wall*2),Height]);
  }
  translate([0,(Width-14)/2,3.5]) {
    cube([Wall, 14, 14.5]);
  }
  #translate([Length-Wall,Width/2, Height/4]) {
    rotate([0,90,0]) cylinder(Wall,3,3,false);
  }
}