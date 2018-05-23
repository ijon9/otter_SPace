class Ball {
  color c;
  float xpos, ypos, xspeed, yspeed;

  Ball() {
    xspeed = random(1, 10);
    yspeed = random(1, 10);
    xpos = random(600);
    ypos = random(600);
    c = color(random(100));
    fill(c);
    ellipse(xpos, ypos, 50, 50);
  }

  void setInMotion() {
    if (xpos <= 0 || xpos >= 600) xspeed *= -1;
    if (ypos <= 0 || ypos >= 600) yspeed *= -1;
    fill(c);
    xpos += xspeed;
    ypos += yspeed;
    ellipse(xpos, ypos, 50, 50);
  }


}
