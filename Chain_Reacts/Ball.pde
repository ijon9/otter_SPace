class Ball {
  color c;
  float xpos, ypos, xVel, yVel;

  Ball() {
    xVel = random(1, 10);
    yVel = random(1, 10);
    xpos = random(600);
    ypos = random(600);
    noStroke();
    c = color(random(250), random(600), random(600));
    fill(c);
    ellipse(xpos, ypos, 25, 25);
  }

  void move() {
    if (xpos <= 0 || xpos >= 600) xVel *= -1; //Checks to make sure ball doesn't go out of field, negates velocity to make it go the other direction
    if (ypos <= 0 || ypos >= 600) yVel *= -1;
    fill(c);
    xpos += xVel; //Prepares coordinates of the translation
    ypos += yVel;
    ellipse(xpos, ypos, 25, 25); //Places the ellipse
  }
}