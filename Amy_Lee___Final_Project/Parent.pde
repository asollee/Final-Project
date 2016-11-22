// Parent Realm
// clean, sharp, sterile, light

int i = 0;

class Parent {

  Parent() {  // class constructor
  }

  // methods
  void display() {
    background(255, 254, 241);

    //perspective
  }

  void bed() {
    stroke(0);
    noFill();
    rect(width/4, height/4, 40, 30);
  }

  void lightspecks(int xLoc, int yLoc) {
    noStroke();
    fill(255, 231, 177, 100);
    /*
    for (int i = 0; i < height + 50; i ++) {
     ellipse(mouseX, mouseY + i, 30, 30);
     }  // for loop BB
     */

      ellipse(xLoc, yLoc + i, 30, 30);
      i = i + 2;
    // ^^ I want the ellipse to just drop to the bottom of the screen everytime I 
    // click with my mouse to "form a lightspeck"
  }
}  // class BB