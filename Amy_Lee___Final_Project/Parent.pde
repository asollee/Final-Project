// Parent Realm
// clean, sharp, sterile, light, white/bright

/*
- kitchen / slaughterhouse room (all white; white tile floor; two realms have similar
layout; window above sink on left side and window at back of room both have billowing
curtains (but not too much bc still dollhouse/inside); yellow carnations or chrysanthemums
in vase on main table/workspace/island slowly wilts with petals falling with mouseclick)
- dining room (single, two-person table in center of room in same position as the 
long dining table in other realm, but short/normal sized; minimal plates and silverware,
BUT with no food EXCEPT for one, opened chocolate bar on the left side of the table, 
maybe interaction with chocolate?, if picked up and dragged around, it leaves a trail
whenever it is dragged over the tablecloth; room's back/behind the table is window)
- bed room (same four/five beds but with warmer tone colors, lines still very taut and 
clean; single window in center has long billowing curtains)
- art room / sylum room (a room with all old portraits and paintings; like the style in
old, royal houses (look at Frozen); eyes of subjects in portraits follow the mouse)
- bathroom (clean, white, simple bathroom; water running in sink; very small pill
container at sink, keep it subtle and almost unnoticeable)
- mirror room (utilizing video, that becomes the texture for every surface in the room, 
clean and bright, video editing for greater brightness, less contrast, and less saturation)
- study room / clock room (single wooden desk facing away from camera; single clock
on wall above the desk; room rounded in this room too, using 3d space, have the sphere
spin, with shallow/subtle streaks as surface texture indicating its movement, showing
how this room is in a bubble almost, closed off from the rest of the world, have sphere
spin/move with tick of clock?)
- attic (bunch of boxes, a coat hanger, typical attic materials; can open boxes and
move items and other interaction with mouse clicks and such; clicks to open boxes; clicks
to spill contents of specific boxes; can move hat off coat hanger and drop it to floor; 
dust mote layer = tiny, tiny, faint, low opacity ellipses or star shapes to resemble 
dust motes and use random and collision and array? to create dust mote layer over the 
image of this room)
*/

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