
PImage painting1, painting2, painting3, painting4, painting5, painting6, painting7, 
  portrait1, portrait2, portrait3, portrait4, portrait5, portrait6, portrait7;
PImage wallpaper, floor;
PImage bathroom, wood;
int x, y;


class Parent {
  Parent() {
    dollhouse = loadImage("data/dollhouse2.jpg");

    // ARTROOM
    wallpaper = loadImage("data/wallpaper.jpg");
    floor = loadImage("data/floor.jpg");

    painting1 = loadImage("data/painting 1.jpg");
    painting2 = loadImage("data/painting 2.jpg");
    painting3 = loadImage("data/painting 3.jpg");
    painting4 = loadImage("data/painting 4.jpg");
    painting5 = loadImage("data/painting 5.jpg");
    painting6 = loadImage("data/painting 6.jpg");
    painting7 = loadImage("data/painting 7.jpg");
    portrait1 = loadImage("data/portrait 1.jpg");
    portrait2 = loadImage("data/portrait 2.jpg");
    portrait3 = loadImage("data/portrait 3.jpg");
    portrait4 = loadImage("data/portrait 4.jpg");
    portrait5 = loadImage("data/portrait 5.jpg");
    portrait6 = loadImage("data/portrait 6.jpg");
    portrait7 = loadImage("data/portrait 7.jpg");

    //BATHROOM
    bathroom = loadImage("data/bathroom.jpg");
    wood = loadImage("data/wood.jpg");


    //MIRROR ROOM
    //cam = new Capture(this, 100, 100);
    //cam.start();
  }  // class constructor


  void display() {
    pushMatrix();
    scale(2);
    tint(255, 254, 241, 200);
    image(dollhouse, 0, 0);
    popMatrix();
    //background(color(255, 254, 241), 100);
  }  // display method BB


  void artroom(PImage img, PImage floor_img) {
    tint(255, 120);  // transparent tint
    background(0);
    lights();
    noFill();

    roomBase(img, floor_img);

    // PAINTINGS
    pushMatrix();  // kids in garden, back wall bottom right
    scale(.06);
    image(painting1, 6200, 7000);
    popMatrix();

    pushMatrix();  // gathering, back wall middle
    translate(300, 283, 0);
    scale(0.1);
    image(painting2, 0, 0);
    popMatrix();

    pushMatrix();  // flowers, left wall
    scale(0.07);
    translate(2300, 3000, 4000);
    rotateY(PI/2);
    image(painting3, 0, 0);
    popMatrix();

    pushMatrix();  // petticoat lady, left wall
    translate(180, 300, 350);
    scale(0.09);
    rotateY(PI/2);
    image(portrait1, 0, 0);
    popMatrix();

    pushMatrix();  // male portrait, back wall middle
    translate(250, 280);
    scale(0.04);
    image(portrait3, 0, 0);
    popMatrix();

    pushMatrix();  // lady with baby, right wall
    translate(390, 255, 330);
    scale(0.35);
    rotateY(-PI/2);
    image(portrait7, 0, 0);
    popMatrix();

    pushMatrix();  // lady in garden, back wall top middle
    translate(250, 150);
    scale(0.1);
    image(portrait4, 0, 0);
    popMatrix();

    pushMatrix();  // red scarf lady, back wall top right
    translate(350, 140);
    scale(0.4);
    image(portrait5, 0, 0);
    popMatrix();

    pushMatrix();  // lady in brown, back wall top left
    translate(110, 150);
    scale(0.55);
    image(portrait6, 0, 0);
    popMatrix();

    pushMatrix();  // lady in kitchen, back wall bottom left
    translate(103, 350);
    scale(0.15);
    image(painting4, 0, 0);
    popMatrix();

    pushMatrix();  // child
    translate(225, 340);
    scale(0.6);
    image(painting6, 0, 0);
    popMatrix();

    pushMatrix();  // lady in field
    translate(385, 325);
    scale(0.2);
    image(painting7, 0, 0);
    popMatrix();
  }  // artroom method BB


  void bathroom() {
    noFill();
    //tint(0, 100);
    lights();
    //background(43, 32, 5);
    pushMatrix();
    scale(1.5);
    image(wood, 0, 0);
    popMatrix();

    pushMatrix();
    translate(85, 0, 0);
    scale(1.6);
    //bathroom.filter(BLUR, 0);
    tint(255, 220);
    image(bathroom, 0, 0);
    popMatrix();

    pushMatrix();
    translate(0, 0, 400);
    fill(255, 0);
    rect(0, 0, 600, 678);
    popMatrix();
  }  // bathroom method BB


  void mirrorRoom() {
    cam.start();
    background(0);
    if (cam.available()) {
      cam.read();
    }  // if cam BB
    //image(cam, 0, 0);
    tint(255, 150);
    cam.filter(DILATE);
    roomBase(cam, cam);
  }  // mirror room method BB



  void roomBase(PImage img, PImage floor_img) {
    // ROOM WALLS
    // used Processing example 'texture cube' as guide
    pushMatrix();
    translate(300, 330);
    scale(2);

    stroke(41, 29, 3);
    strokeWeight(1);
    //lights();
    beginShape(QUADS);
    texture(img);

    // -Z "back" face
    vertex( 100, -100, 0, 0, 0);
    vertex(-100, -100, 0, 100, 0);
    vertex(-100, 100, 0, 100, 100);
    vertex( 100, 100, 0, 0, 100);

    // -Y "top" face
    vertex(-100, -100, -100, 0, 0);
    vertex( 100, -100, -100, 100, 0);
    vertex( 100, -100, 100, 100, 100);
    vertex(-100, -100, 100, 0, 100);

    // +X "right" face
    vertex( 100, -100, 100, 0, 0);
    vertex( 100, -100, -100, 100, 0);
    vertex( 100, 100, -100, 100, 100);
    vertex( 100, 100, 100, 0, 100);

    // -X "left" face
    vertex(-100, -100, -100, 0, 0);
    vertex(-100, -100, 100, 100, 0);
    vertex(-100, 100, 100, 100, 100);
    vertex(-100, 100, -100, 0, 100);

    endShape();

    beginShape();
    texture(floor_img);
    // +Y "bottom" face
    vertex(-100, 100, 100, 0, 0);
    vertex( 100, 100, 100, 100, 0);
    vertex( 100, 100, -100, 100, 100);
    vertex(-100, 100, -100, 0, 100);
    endShape();

    popMatrix();
  }  // roomBase method BB
}  // class BB