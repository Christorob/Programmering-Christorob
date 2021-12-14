class Spaceship extends Object {

  Spaceship(int w_, int h_, PVector xPos_, PVector yPos_, PVector speed_) {
    w = w_;
    h = h_;
    xPos = xPos_;
    yPos = yPos_;
    speed = speed_;
  }

  void display() {
    fill(255,100,100);
    rect(xPos.x, yPos.y, w, h);
  }

  void moveUp() {
    yPos.sub(speed);
    
  }

  void moveDown() {
    yPos.add(speed);
  }
}
