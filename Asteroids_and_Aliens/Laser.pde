class Laser extends Object {

  Laser(PVector pos_, PVector speed_) {
    pos = pos_;
    speed = speed_;
  }

  void display() {

    fill (#1AFF73);
    ellipse(pos.x, pos.y, 30, 5);
    println("Test Laser Display");
  }

  void move() {
    pos.add(speed);
  }
}
