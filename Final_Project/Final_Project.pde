// Two Realms - Final Project


boolean realm_check = true;
boolean artroom_check = true;
boolean bathroom_check = true;
boolean mirrorRoom_check = true;
// True = parent , False = other
Parent parent;
Other other;

PImage dollhouse;

boolean room_check = false;


import processing.video.*;
Capture cam;


void setup() {
  //size(1020, 680, P3D);
  size(600, 678, P3D);
  parent = new Parent();
  other = new Other();

  //dollhouse = loadImage("data/dollhouse2.jpg");
  //cam = new Capture(this, 100, 100, 30);
  cam = new Capture(this, 320, 240, 30);
  //cam.start();
}


void draw() {
  //image(dollhouse, 200, 140);

  // realm change
  if (realm_check == true) {
    parent.display();
    artroom_check = true;
    //parent.bathroom();
    //parent.mirrorRoom();
    //rooms(mouseX, mouseY);
    if (keyPressed && key == 32) {
      realm_check = false;
      other.display();
      artroom_check = false;
      //other.bathroom();
      //other.mirrorRoom();
    }  // if keypress BB
  } else {
    other.display();
    artroom_check = false;
    //other.bathroom();
    //other.mirrorRoom();
    //rooms(mouseX, mouseY);
    if (keyPressed && key == 32) {
      realm_check = true;
      artroom_check = true;
      parent.display();
      //parent.artroom(wallpaper, floor);
      //parent.bathroom();
      //parent.mirrorRoom();
    }  // if keypress BB
  } // else BB


  if (keyPressed && key == 49) {
    artroom_check = true;
    parent.artroom(wallpaper, floor);
    if (keyPressed && key == 50) {
      other.artroom();
    }
    /*
    if (artroom_check == true) {
     parent.artroom(wallpaper, floor);
     if (keyPressed && key == 50) {
     artroom_check = false;
     other.artroom();
     }  // if keypress BB
     } else {
     artroom_check = false;
     other.artroom();
     if (keyPressed && key == 50) {
     artroom_check = true;
     parent.artroom(wallpaper, floor);
     }  // if keypress BB
     } // else BB
     } // a keypress BB
     */

    if (keyPressed && key == 8) {
      if (realm_check == true) {
        parent.display();
      } else {  // realm_check == false
        other.display();
      }  // else BB
    } // backspace key press BB
  } // draw BB

  /*
void class_other() {
   }  // class_other function BB
   
   
   void class_parent() {
   }  // class_parent function BB
   
   
   void move() {
   }  // move function BB
   */
/*
void rooms(int x, int y) {
    stroke(255);
    noFill();
    rectMode(CORNER);

    //rect(42, 65, 80, 62); // attic
    //room_check = overRoom(42, 65, 80, 62);
    if (overRoom(42, 65, 80, 62)) {
      fill(255);
      rect(42, 65, 80, 62);
    } else {
      noFill();
      rect(42, 65, 80, 62);
    }
    rect(125, 65, 51, 62); // bathroom
    //room_check = overRoom(179, 65, 82, 62);
    rect(179, 65, 82, 62); // bedroom
    rect(42, 130, 80, 60); // artroom
    rect(125, 130, 51, 60); // clock room
    rect(179, 130, 82, 60); // mirror room
    rect(42, 192, 80, 63); // dining room
    rect(125, 192, 51, 63); // hallway
    rect(179, 192, 82, 63); // kitchen


    //translate(250, 140, 0);
    //box(250, 200, 200);
  } // room function BB


  // used Processing example for 'Rollovers' as guide
  boolean overRoom (int x, int y, int roomW, int roomH) {
    if (mouseX >= x && mouseX <= x + roomW &&
      mouseY >= y && mouseY <= y + roomH) {
      return true;
    } else {
      return false;
    }  // if rollover BB
  } // boolean BB
*/