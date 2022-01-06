class Spaceship extends Object {

  Spaceship(int w_, int h_, PVector pos_, PVector speed_) {
    w = w_;
    h = h_;
    pos = pos_;
    speed = speed_;
  }

  void display() {
    fill(255,100,100);
    rect(pos.x, pos.y, w, h);
  }

  void moveUp() {
    pos.y -= speed.y;
    
  }

  void moveDown() {
    pos.y += speed.y;
  }
}
