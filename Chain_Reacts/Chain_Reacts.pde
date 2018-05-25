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

  for (int i = 0; i < arr.size(); i++) {
    Ball b = arr.get(i); 
    //Chooses what the ball does based on its state
//============================================================== b Moving
    if (b.state == MOVING) { 
      //Checks for collision
      for (int n = 0; n < arr.size(); n++) { //Checks each ball if it will collide
        Ball c = arr.get(n);
        if ((c.state == GROWING || c.state == SHRINKING) && (pow(pow((b.xpos - c.xpos), 2) + pow((b.ypos - c.ypos), 2), 0.5)) < b.rad/2 + c.rad/2) {
          //If dist between the two (x, y) are less than the radii of the two circles added together, the two circles have collided
          b.setState(GROWING);
          break;
        }
      }
      //Otherwise moves
      b.move();
    }
//===============================================================
    if (b.state == GROWING) //b growing
      b.grow();
    if (b.state == SHRINKING) //b shrinking
      b.shrink();
      
    //Do nothing if b is dead
  }
}

void mouseClicked() {
  Ball c = new Ball(mouseX, mouseY);
  arr.add(c);
}
