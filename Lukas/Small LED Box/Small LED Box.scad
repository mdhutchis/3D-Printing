
Wall   = 1.5; // Wall thickness
//Inner Widths
Length = 61+Wall*2; // X axis
Width  = 50+Wall*2; // Y
Height = 9; // Z


//difference(){
//  cube([Length,Width,Height]);  
//  translate([Wall,Wall,Wall]) {
//    cube([Length-(Wall*2),Width-(Wall*2),Height]);
//  }
//
//
//}


LidHeight = 1.5;
difference() {
union(){
  cube([Length,Width,LidHeight]);  
  
  translate([Wall,Wall-.1,Wall]) {
    cube([Length-(Wall*2),Width-(Wall*2)+.2,2]);
  }
}
translate([5,5,0]) cube([31-5,19-5,10]);

translate([8,29.5,0]) cube([10,20,10]);
}