import java.util.ArrayList;

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
    b.move();
  }
  
  
}
