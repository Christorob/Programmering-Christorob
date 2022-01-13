class Spaceship extends Object {

  int health;

  Spaceship(int w_, int h_, PVector pos_, PVector speed_, int health_) {

    w = w_;
    h = h_;
    pos = pos_;
    speed = speed_;
    health = health_;
  }

  void display() {
    fill(255, 100, 100);
    rect(pos.x, pos.y, w, h);
    textSize(20);
    text(int(health) + " health left", 50, 50);
  }

  void moveUp() {
    pos.y -= speed.y;
  }

  void moveDown() {
    pos.y += speed.y;
  }
}
