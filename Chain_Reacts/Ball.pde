class Ball {
  final float CHANGE_FACTOR = 0.25; // Factor by which the ball grows or shrinks 
  final float MAX_RADIUS = 75; // Maximum radius a ball can have
  float xpos, ypos, dx, dy, rad;
  int state; // Use the first 4 constants to determine the state of the ball
  color c;

  Ball() {
    dx = random(1, 10);
    dy = random(1, 10);
    xpos = random(600);
    ypos = random(600);
    rad = 25;
    state = MOVING;
    noStroke();
    c = color(random(250), random(600), random(600));
  }

  Ball(float x, float y) {
    this();
    xpos = x;
    ypos = y;
    state = GROWING;
  }
  
  void setState(int n) {
    state = n;  
  }
  
  void move() {
    if (xpos <= 0 || xpos >= 600) 
      dx *= -1; //Checks to make sure ball doesn't go out of field, negates velocity to make it go the other direction
    if (ypos <= 0 || ypos >= 600) 
      dy *= -1;
    fill(c);
    xpos += dx; //Prepares coordinates of the translation
    ypos += dy;
    ellipse(xpos, ypos, rad, rad); //Places the ellipse
  }

  void grow() {
    if (rad >= MAX_RADIUS) 
      state = SHRINKING;
    else {
      fill(c);
      rad += CHANGE_FACTOR;
      ellipse(xpos, ypos, rad, rad); //Places the ellipse
    }
  }

  void shrink() {
    state = SHRINKING;
    if (rad <= 0) 
      state = DEAD;
    else {
      fill(c);
      rad -= CHANGE_FACTOR;
      ellipse(xpos, ypos, rad, rad);
    }
  }
}
