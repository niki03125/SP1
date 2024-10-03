class Alfred {


  void display() {
    // All shapes set to center
    ellipseMode(CENTER);
    rectMode(CENTER);

    //Head
    fill(red, green, blue);
    stroke(black);
    ellipse(mouseX, mouseY, width/6, height/6);

    //ears
    fill(red, green*nuance, blue*nuance);
    stroke(black);
    ellipse(mouseX-width/15, mouseY-height/13, width/45, height/25);
    ellipse(mouseX+width/15, mouseY-height/13, width/45, height/25);

    //Nose
    fill(red, green*nuance, blue*nuance);
    stroke(black);
    ellipse(mouseX, mouseY+height/80, width/15, height/15);
    fill(black);
    ellipse(mouseX-width/80, mouseY+height/80, width/60, height/60);
    ellipse(mouseX+width/80, mouseY+height/80, width/60, height/60);

    //Eyes
    fill(black);
    ellipse(mouseX-width/33, mouseY-height/40, width/60, height/60);
    ellipse(mouseX+width/33, mouseY-height/40, width/60, height/60);

    //Body
    fill(red, green, blue);
    stroke(black);
    rect(mouseX, mouseY+height/6.8, width/13, height/8);
  }
}
