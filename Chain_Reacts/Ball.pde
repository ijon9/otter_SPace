class Ball {
  color c;
  float xpos, ypos, speed;

  Ball() {
    speed = random(1, 10);
    xpos = random(600);
    ypos = random(600);
    c = color(random(100));
    fill(c);
    ellipse(xpos, ypos, 50, 50);
  }

  void setInMotion() {
    if (xpos <= 0 || ypos <= 0 || xpos >= 600 || ypos >= 600)
      speed *= -1;
    fill(c);
    xpos += speed;
    ypos += speed;
    //background(255, 200, 200);
    ellipse(xpos, ypos, 50, 50);
  }
}
