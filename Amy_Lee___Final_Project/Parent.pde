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
    fill(255, 231, 177, 200);
    /*
    for (int i = 0; i < height + 50; i ++) {
     ellipse(mouseX, mouseY + i, 30, 30);
     }  // for loop BB
     */

    ellipse(xLoc, yLoc + i, 30, 30);
    i = i + 2;

    if (yLoc + i > height) {
      i = 0;
    }  // if BB
    
    // why doesn't the ellipse "restart" at the mouseY position everytime I click? 
    //It instead keeps continuing from the last time I clicked it, and I don't want that
    
  }  // lightspecks function BB
}  // class BB