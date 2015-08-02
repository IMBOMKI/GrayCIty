import fisica.*;

FWorld world; 
int canvas_width=900;
int canvas_height=500;
head myhead;

void setup(){

  size(canvas_width,canvas_height);
  smooth();
  
  Fisica.init(this);
  world = new FWorld();
  
  world.setGrabbable(false);
  world.setEdges();
  world.setGravity(0,500);
  world.setEdgesRestitution(0.5);
  myhead = new head(10);
  world.add(myhead);
}


void draw(){
  background(122);  
  world.step();
  world.draw();

}

void mousePressed(){
	
}

void keyPressed(){
if (key == 'a'){
	myhead.adjustPosition(-2,0);
}

if (key == 'd'){
	myhead.adjustPosition(2,0);
}
	
}