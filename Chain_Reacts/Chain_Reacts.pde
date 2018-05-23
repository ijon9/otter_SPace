int balls = 0;

void setup() {
  size(600, 600);
  background(255, 200, 200);
}

void draw() {
  
  if(balls < 35) {
    Ball b = new Ball();
    balls += 1;
    b.setInMotion();
  }
  
}