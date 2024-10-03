Piglet [] xpiglets = new Piglet[10];
PImage img1;
PImage img2;
int red = 255;
int green = 200;
int blue = 200;
int black = 0;
int intensColor=10;

float nuance=0.75;

Piglet piglet;
Alfred alfred;

void setup() {
  size(1000, 1000);
  smooth();
  noStroke();
  img1 = loadImage("alfredByDayImage.png");
  img2 = loadImage("alfredByNightImage.png");

  piglet = new Piglet(50, height-200);

  alfred = new Alfred();
}

void armsUp() {
  //Arms up
  stroke(0);
  ellipse(mouseX+width/20, mouseY+height/9.3, width/40, height/40);
  ellipse(mouseX-width/20, mouseY+height/9.3, width/40, height/40);
}

void armsDown() {
  // arms down
  stroke(0);
  ellipse(mouseX+width/26, mouseY+height/7.5, width/40, height/40);
  ellipse(mouseX-width/26, mouseY+height/7.5, width/40, height/40);
}

void legsOut() {
  //Legs out
  stroke(0);
  ellipse(mouseX+width/26.6, mouseY+height/4.8, width/40, height/40);
  ellipse(mouseX-width/26.6, mouseY+height/4.8, width/40, height/40);
}

void legsIn() {
  //Legs down
  stroke(0);
  ellipse(mouseX+width/57, mouseY+height/4.8, width/40, height/40);
  ellipse(mouseX-width/57, mouseY+height/4.8, width/40, height/40);
}

void drawDay() {
  //Day
  image(img1, 0, 0, width, height);
  fill(240,232,73);
  ellipse(0, 0, width/4, height/4);
  fill(4, 211, 109);
  rect(0, height, width+width, height/8);
}

void drawNight() {
  //Night
  image(img2, 0, 0, width, height);
  //Cape
  fill(242, 12, 74);
  triangle(mouseX, mouseY, mouseX-width/10, mouseY+height/6, mouseX+width/10, mouseY+height/6);
  //Moon
  fill(213, 229, 229);
  ellipse(width-width/4, 0, width/5, height/5);
  //Grass
  fill(4, 150, 75);
  rect(0, height, width+width, height/8);
}


void drawStars() {
  //stars
  star(width/12, height/12);
  star(width/3, height/12);
  star(width-width/3, height/12);
  star(width-width/12, height/12);
  star(width/5, height/6);
  star(width/2, height/6);
  star(width-width/5, height/6);
}


void star(int x, int y) {
  // a star
  fill(249, 250, 35);
  noStroke();
  ellipse(x, y, width/25, height/90);
  ellipse(x, y, width/90, height/25);
}


void draw() {
  background(255);
  stroke(0);
  int maxPiglets;

  if (mouseY > height/2) {
    drawDay();
  } else {
    drawNight();
    drawStars();
    // floor means rounding down
    maxPiglets = floor( width/100);
    for ( int i = 0; i < maxPiglets; i++) {
      piglet.move(i*100, height-200);
      piglet.display();
    }
    maxPiglets=floor((width - 50)/100);
    for ( int i = 0; i < maxPiglets; i++) {
      piglet.move((i*100) + 50, height-150);
      piglet.display();
    }
    }

    alfred.display();

    // en piglet, lav flere med loops!
    piglet.display();


    //change in color of the arms and legs og the pig
    if (mouseY < height/2) {
      fill(random(red), random(green), random(blue));
    } else {
      fill(red, green, blue);
    }

    mousePressed();
  }

  void mousePressed() {

    if (mousePressed) {
      armsUp();
      legsOut();
    } else {
      armsDown();
      legsIn();
    }
  }
