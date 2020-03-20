
Wall   = 1.5; // Wall thickness
Length = 75+Wall*2; // X axis
Width  = 19+Wall*2; // Y
Height = 25; // Z

//How thick shall the hooks be?
t1=3.375;
//How thick shall the clamp bridge be?
t2=1.5;
//high of the clamp
w1=4;
//depth of the hook
t3=2;
//profile width
l1=15;
//distance from edge to slot
l2=7;
//How much extra space needed to make print fit?
x=0.25;



module hook()
{
	//one leg
	cube([l2+t2+2*t3+x,t1,w1]);

	//the hook
	translate ([l2+t2+x,t1,0]){
		polyhedron ( points = [[0,0,0],[2*t3,0,0],[t3,t3,0],[0,t3,0],[0,0,w1],[2*t3,0,w1],[t3,t3,w1],[0,t3,w1],[0,t3,w1]],
		triangles = [[0,5,1],[5,0,4],[1,6,2],[6,1,5],[2,6,3],[6,7,3],[7,4,0],[0,3,7],[5,4,6],[4,7,6],[0,1,2],[2,3,0]]);
	}
}

translate ([15+Wall,Wall,0]) rotate([90,0,270]) union() {
	//let us do the top cover first
	cube([t2,l1+2*t1+x,w1]);
	//now the first hook
	hook();
	//second hook
	//hook mirrored and moved to the other side
	translate([0,l1+t1+t1+x,0]){
		mirror([0,1,0]){
			hook();}
	}
}

translate ([Length-15+Wall*2,Wall,0]) rotate([90,0,270]) union() {
	//let us do the top cover first
	cube([t2,l1+2*t1+x,w1]);
	//now the first hook
	hook();
	//second hook
	//hook mirrored and moved to the other side
	translate([0,l1+t1+t1+x,0]){
		mirror([0,1,0]){
			hook();}
	}
}

difference(){
  cube([Length,Width,Height]);  
  translate([Wall,Wall,Wall]) {
    cube([Length-(Wall*2),Width-(Wall*2),Height]);
  }
  translate([0,(Width-13.5)/2,2.5+3.5]) {
    cube([Wall, 13.5, 14.5+5]);
  }
  translate([Length-Wall,(Width-5)/2,2]) {
    cube([Wall, 6, 4]);
  }
}