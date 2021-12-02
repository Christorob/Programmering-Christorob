class Spaceship extends Object {

  Spaceship(int w_, int h_, PVector xPos_, PVector yPos_, PVector speed_) {
    w = w_;
    h = h_;
    xPos = xPos_;
    yPos = yPos_;
    speed = speed_;
  }

  void display() {

    rect(xPos.x, yPos.y, w, h);
  }

  void moveUp() {
    yPos.add(speed);
  }

  void moveDown() {
    yPos.sub(speed);
  }
}
