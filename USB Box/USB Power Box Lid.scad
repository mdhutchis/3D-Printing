
Wall   = 1.5; // Wall thickness
Length = 75+Wall*2; // X axis
Width  = 19+Wall*2; // Y
Height = 1.5; // Z

union(){
  cube([Length,Width,Height]);  
  #translate([0,(Width-13.5)/2,Wall]) cube([Wall,13.5,4]);  
  translate([Wall,Wall-.1,Wall]) {
    cube([Length-(Wall*2),Width-(Wall*2)+.2,2]);
  }

}