class Piglet
{

  int posX;
  int posY;

  Piglet(int x, int y)
  {
    this.posX = x;
    this.posY = y;
  }

  void display()
  {
    rectMode(CORNER);

    pushMatrix();
    translate(this.posX, this.posY);
    //head
    fill(255, 200, 200);
    stroke(0);
    ellipse(50, 50, 50, 50);

    //arms up
    line(40, 80, 10, 65);
    line(60, 80, 90, 65);

    //ears
    fill(255, 150, 150);
    stroke(0);
    triangle(30, 20, 40, 25, 32, 32);
    triangle(70, 20, 60, 25, 70, 32);

    //nose
    fill(255, 150, 150);
    stroke(0);
    ellipse(50, 50, 20, 20);
    fill(0);
    ellipse(45, 50, 5, 5);
    ellipse(55, 50, 5, 5);

    //eyes
    fill(0);
    ellipse(40, 40, 5, 5);
    ellipse(60, 40, 5, 5);

    //body
    fill(255, 200, 200);
    stroke(0);
    rect(40, 75, 20, 50);

    //legs
    line(40, 150, 40, 100);
    line(60, 150, 60, 100);

    popMatrix();
    rectMode(CENTER);
  
  }
  void move(int dx,int dy){
  this.posX = dx;
  this.posY = dy;
  }
}
