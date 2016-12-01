// Two Realms - Final Project

boolean Parent_show = true;
boolean Other_show = false;
Parent parent;
Other other;
//import peasy.*;

//PeasyCam cam;

void setup() {
  fullScreen(P3D);
  //cam = new PeasyCam(this, 100);
  //background(255);
}


void draw() {
  /*
  if (keyPressed) {
   if (Parent_show == true) {
   Parent_show = false;
   parent.display();
   } else {
   other.display();
   }
   }
   // ^^^ so I'm trying to have it where the program goes back and forth between the 
   // two realms every time I press the space bar, but I'm not sure how to do that...
   
   Boolean statement that checks to see which realm you're in right now, and
   if spacebar pressed, to switch to the other one
   */

  // OR
  parent = new Parent();
  other = new Other();

  parent.display();
  //parent.bed();
  if (mousePressed){
    parent.lightspecks(mouseX, mouseY);
  }

  if (keyPressed) {
    //background(14, 33, 30);
    other.display();
  }  // if key press BB
  
  /*
  perspective(color(240, 238, 226));
  if (keyPressed){
    perspective(0);
  }  // if keypress BB
  */
  
  house();
  
}  // draw BB

/*
void perspective(color c) {
  stroke(c);
  strokeWeight(1);
  noFill();
  rectMode(CENTER);
  rect (width/2, height/2, width/2, height/2);
  line(0, 0, width/4, height/4);
  line(width, 0, 3*width/4, height/4);
  line(0, height, width/4, 3*height/4);
  line(width, height, 3*width/4, 3*height/4);
}   // perspective function BB

maybe for outside room, use a sphere or another box to create depth
as the room outside of the dollhouse
*/

void house(){
  stroke(0); // change to reddish brown
  noFill();
  rectMode(CORNER);
  //rect(400, 300, 450, 450);
  
  pushMatrix();
  translate(630, 450);
  box(400, 450, 300);
  popMatrix();
}  // house function BB


void move(){
 // transfer  
}