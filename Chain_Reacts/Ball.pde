class Ball {
  final static int MOVING = 0; 
  final static int GROWING = 1;  
  final static int SHRINKING = 2; 
  final static int DEAD = 3;
  final float CHANGE_FACTOR = 0.25; // Factor by which the ball grows or shrinks 
  final float MAX_RADIUS = 50; // Maximum radius a ball can have
  float xpos, ypos, dx, dy, rad;
  int state; // Use the first 4 constants to determine the state of the ball
  color c;

  Ball() {
    dx = random(1, 10);
    dy = random(1, 10);
    xpos = random(600);
    ypos = random(600);
    noStroke();
    c = color(random(250), random(600), random(600));
    fill(c);
    ellipse(xpos, ypos, 25, 25);
  }

  void move() {
    if (xpos <= 0 || xpos >= 600) dx *= -1; //Checks to make sure ball doesn't go out of field, negates velocity to make it go the other direction
    if (ypos <= 0 || ypos >= 600) dy *= -1;
    fill(c);
    xpos += dx; //Prepares coordinates of the translation
    ypos += dy;
    ellipse(xpos, ypos, 25, 25); //Places the ellipse
  }
  
  void grow() {
    
  }
  
  void shrink() {
  }
}