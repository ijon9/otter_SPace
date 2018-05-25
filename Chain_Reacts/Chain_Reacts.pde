import java.util.ArrayList;

final static int MOVING = 0; 
final static int GROWING = 1;  
final static int SHRINKING = 2; 
final static int DEAD = 3;
int balls = 0;
ArrayList<Ball> arr = new ArrayList<Ball>();

void setup() {
  size(600, 600);
  background(255, 200, 200);
}

void draw() {

  if (arr.size() < 35) {
    Ball b = new Ball();
    arr.add(b);
  }
  background(255, 200, 200);
  for (Ball b : arr) {
    if (b.state == MOVING) 
      b.move();
    if (b.state == GROWING) 
      b.grow();
    if (b.state == SHRINKING) 
      b.shrink();
  }
}

void mouseClicked() {
  Ball c = new Ball(mouseX, mouseY);
  arr.add(c);
}
