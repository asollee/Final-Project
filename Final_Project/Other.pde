// Other Realm
// black/dark, dirty, forsaken, horrendous, frightful, mysterious, 

/*
Have all the rooms in Other class as methods, 
 and then in main call each method according to the room..?
 
 BUT THEN, have to have functions inside functions because need to create 
 inside each room
 
 room = method
 objects and parts of room in each method..?
 
 - slaughterhouse room / kitchen (blue/gray/black tint to room; dirty with dirt, blood,
 feathers, dust; workbench style table with chicken and knife, when clicked the knife
 decapitates the chicken; faint, blue and orange fire at stove; giant carved cow 
 carcass on right side, swings and twirls slightly when clicked); 
 - dining room (dark mad tea party from Alice in Wonderland; dark with few candles 
 that flicker; long dining table with white sheetcloth stretches forever into the screen; 
 plates and silver ware; big, whole pig in the center, head can be removed with mouse 
 by dragging and behind the head can "see" into carcass?)
 - bed room (four or five metal, jail beds, can uncover the sheets with a click and find
 objects in each bed (knife, dirty teddy bear, old photograph, key, etc.); stone floors
 like a jail cell; dirty and cracked windows like in joke mv)
 - asylum room / art room (use inspiration and instrumental audio from MAMA; script/words will be 
 layered with other layers of artworks and words; neon/high contrast color palette; 
 have animation match to song if possible? like in the video; paint dripping down the
 paintings and walls)
 - bathroom (blue/gray tint, cold vibes, whole room underwater/filled with water 
 with pills streaking down; the pill container will be on its side as if pills spilled)
 - mirror room (utilizing video, that becomes the texture for every surface in the room;
 dark with cracks on mirror/video; some static; is immediate image editing possible when
 using cameras?; filter = inverse colors, high contrast, dark, grainy)
 - clock room / study room (use audio to get multiple clocks to tick at once; room is 
 almost round as if in fish eye lens to make it feel like user is in actual clock; 
 enlargened images of clocks all around, some with hands moving or spinning crazily
 that stop in their tracks with a mouse click; ALSO with mousepress = no audio)
 - attic (single skeleton in center; different parts of the body moves when clicked, 
 eyehole in skull light up, fingers twiddle on one hand, other hand makes a fist, 
 ribs expand slightly as if emulating breathing, feet twitch/move; single, faint/subtle
 spotlight on skeleton; no more dustmotes, everything else is black with only faint depth
 to indicate a room)
 */

PImage splatterwall;
PImage bathroom2;

//float rand = random(0, 600);
Pill[] pills = new Pill[10];

float cracksX;
float cracksY;

PFont f;
String s1, s2, s3;

class Other {
  Other() {
    dollhouse = loadImage("data/dollhouse2.jpg");

    //ARTROOM
    splatterwall = loadImage("data/splatter wall 3.jpg");
    f = createFont("STBaoli-SC-Regular", 28);
    //f = createFont("Trattatello", 24);
    s1 = ("My sin was not specifically this or that but consisted of having shaken hands"); 
    s2 = (" with the devil. The devil held me in his clutches, the enemy was behind me.");
    s3 = ("nnnnnnnmmmmmmnnnnnmmmmmnnnmuuuuuuuummnuuuwwwwwwwwwwwwwmmmmnnnnnnnwwwwmwmmuuuwwwm");

    //BATHROOM
    bathroom2 = loadImage("data/bathroom.jpg");
    wood = loadImage("data/wood.jpg");
    for (int i = 0; i < pills.length; i ++) {
      //pushMatrix();
      //translate(0, 0, random(-2000, -10));
      // ^^ tried to have layers, so some pills would be reall small falling since
      // they're farther away, giving a sense of depth, BUT it was a fail....
      pills[i] = new Pill(255, random(90, width - 90), 0, random(1, 15));
      //popMatrix();
    }  // initializer for all pills

    //MIRROR ROOM
    cracksX = width/2;
    cracksY = height/2;
  } // class constructor

  void display() {
    pushMatrix();
    scale(2);
    //tint(14, 33, 30, 3);  // just dark with yellow
    //tint(110, 59, 255, 3);  //red with a little yellow
    //tint(75, 45, 255, 200);  // purple/red with a little yellow this one
    //tint(55, 38, 255, 200);  // blue/purple with darker yellow
    //tint(23, 53, 217, 3);  // blue with darker yellow
    //tint(78, 27, 217, 100);
    tint(78, 50, 217, 100);
    image(dollhouse, 0, 0);
    popMatrix();
    //background(color(14, 33, 30), 100);
  } // display method BB


  void artroom() {
    frameRate(0.1);
    tint(15, 0, 240, 150);
    lights();
    parent.artroom(splatterwall, splatterwall);

    //put black slashes/paint over eyes of every portrait with a bright red line?


    //have multiple layers of these shapes/splatters by changing z on translate
    pushMatrix();
    translate(0, 0, 350);
    color[] colors = {color(240, 0, 82), color(0, 217, 31), 
      color(0), color(19, 21, 135), color(255, 246, 0)};
    int index = int(random(colors.length));
    for (int i = 0; i < 5; i = i + 1) {
      //fill(colors[index]);
      //ellipse(random(0, width), random(0, height), random(1, 300), random(1, 8));
      stroke(colors[index]);
      strokeWeight(random(1, 10));
      line(random(0, width), random(0, height), random(0, width), random(height));
      //bezier(rand, rand, rand, rand, rand, rand, rand, rand);
    }  // for loop shapes BB
    popMatrix();
    pushMatrix();
    translate(0, 0, 300);
    for (int i = 0; i < 5; i = i + 1) {
      //fill(colors[index]);
      //ellipse(random(0, width), random(0, height), random(1, 300), random(1, 8));
      ellipse(random(0, width), random(0, height), random(1, 20), random(1, 10));
    } // for loop BB
    popMatrix();

    pushMatrix();
    translate(300, 250, 450);
    //translate(300, 250, 320);
    //scale(0.17);
    scale(0.2);
    textFont(f);
    textAlign(CENTER);
    //float r = random(-2, 1);
    float r = random(-5, 5);
    //String[] strings = {s1, s2, s3};
    //int s = random{};
    for (int i = 0; i <= height * 2; i += 100) {
      //fill(252, 22, 0);
      //text(random(for (i =l, random(0 - width/2, 0), 

      fill(252, 22, 0);  // red text beneath
      text(s3, 0, 0 + i);
      //text(s1, 1, 5 + i);
      //text(s2, 5, 25 + i);
      //text(s3, 1, 45 + i); 
      text(s1, r, r + 5 + i);
      text(s2, r, r + 35 + i);
      text(s3, r, r + 55 + i); 

      fill(color(255, 246, 0), 200);  // yellow text top
      text(s3, 5, i);
      //text(s1, 6, 0 + i);
      //text(s2, 1, 30 + i);
      //text(s3, 6, 50 + i);
      text(s1, r, 0 + i + r);
      text(s2, r, 20 + i + r);
      text(s3, r, 40 + i + r);
    }  // for loop BB
    popMatrix();
  }  // artroom method BB

  void bathroom() {
    //tint(29, 110, 97);
    //tint(0, 100);
    //lights();
    //background(43, 32, 5);
    pushMatrix();
    scale(1.5);
    image(wood, 0, 0);
    popMatrix();

    pushMatrix();
    translate(85, 0, 0);
    scale(1.6);
    //tint(17, 64, 56);
    tint(29, 110, 97);
    bathroom2.filter(POSTERIZE, 4);
    //bathroom2.filter(INVERT);
    image(bathroom2, 0, 0);
    popMatrix();

    for (int i = 0; i < pills.length; i ++) {
      //pushMatrix();
      //translate(-100, 100);
      pills[i].display();
      //popMatrix();
      pills[i].move();
    } // for loops to run each pill
    // if time, make trails (look at textbook pg 175

    pushMatrix();
    translate(0, 0, 400);
    //fill(40, 153, 135, 200);
    fill(11, 43, 38, 30);
    rect(85, 0, 525, 678);
    popMatrix();

    /*
     int y = 0;
     float r = random(5, 10);
     float speed = random(1, 20);
     //for (int i = 0; i <= height; i = i + 1) {
     //noFill();
     //fill(255);
     stroke(255);
     //ellipse(random(width), y, r, r);
     
     float speed = random(1, 5);
     for (int i = 0; i < 1; i ++) {
     ellipse(random(85, width - 85), y, 50, 50);
     
     y += speed;
     
     if (y > height + 20) {
     y = 0;
     }  // reset if BB
     }  // pills for loop BB
     */
  }  // bathroom method BB


  void mirrorRoom() {
    cam.start();
    background(0);
    if (cam.available()) {
      cam.read();
    }  // if cam BB
    //image(cam, 0, 0);
    cam.filter(INVERT);
    cam.filter(THRESHOLD);
    roomBase(cam, cam);


    pushMatrix();
    translate(0, 0, 200);
    //translate(300, 300);
    frameRate(60);
    // scale(6);

    if (mousePressed) {  // used 'Learning Processins': Example 16-9 as a guide
      for (int i = 0; i < 50; i++) {
        float newx = constrain(cracksX + random(-100, 100), 0, width);
        float newy = constrain(cracksY + random(-100, 100), 100, height - 100);
        //float newx = cracksX + random(10, 50);
        //float newy = cracksY + random(10, 50);

        stroke(170, 96, 201);
        strokeWeight(random(1, 4));
        strokeWeight(10);
        line(cracksX, cracksY, newx, newy);

        cracksX = newx;
        cracksY = newy;
      }  // for loop BB
    } // if mouse press BB

    popMatrix();
  }  // mirror room method BB

  void studyroom() {
    background(0);
    lights();
    //file.play();
    file.jump(10);
    file.jump(5);
    sphere(200);
    //file.stop();
  } // studyroom method BB


  void roomBase(PImage img, PImage floor_img) {
    pushMatrix();
    translate(300, 330);
    scale(2);

    //stroke(41, 29, 3);
    stroke(0);
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



class Pill {
  // used 'Learning Processing' textbook: Example 9-9 as a guide
  color c = 255;
  float xpos;
  float ypos;
  float speed;

  Pill(color c_, float xpos_, float ypos_, float speed_) {
    c = c_;
    xpos = xpos_;
    ypos = ypos_;
    speed = speed_;
  }  // Pill constructor

  void display() {
    //pushMatrix();
    //translate(0, 0, random(-100, 100));
    stroke(0);
    strokeWeight(1);
    fill(c, 200);
    ellipse(xpos, ypos, 20, 15);
    //popMatrix();
  }  // display method BB

  void move() {
    ypos = ypos + speed;
    if (ypos > height + 20) {
      ypos = 0;
    } // if BB
  } // move method BB
}  // Pill class BB