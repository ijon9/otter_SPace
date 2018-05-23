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

    if (xpos <= 0) {
      xpos += speed;
      ellipse(xpos, ypos, 50, 50);
    }
    if (xpos >= 600) {
      xpos -= speed;
      ellipse(xpos, ypos, 50, 50);
    }
    if (ypos <= 0) {
      ypos += speed;
      ellipse(xpos, ypos, 50, 50);
    }
    if (ypos >= 600) {
      ypos -= speed;
      ellipse(xpos, ypos, 50, 50);
    } 
    else
      ellipse(xpos + speed, ypos + speed, 50, 50);
  }
}