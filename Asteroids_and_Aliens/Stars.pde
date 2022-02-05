class Star extends Object {

  color c = color(random(200, 255), random(200, 255), random(200, 255));

  Star(float w_, float h_, PVector pos_, PVector speed_) {
    w = w_;
    h = h_;
    pos = pos_;
    speed = speed_;

    w *= random(0.05, 0.3);
    h = w;
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(pos.x, pos.y, w, h);
  }

  void move() {

    pos.x -= speed.x;
    //println("teststar pos: " + pos.x + "  " + pos.y);
    pos.y -= speed.y;

    if (pos.y > height || pos.y < 0 || pos.x < 0) {
      pos.y = random(0, 800);
      pos.x = random(width, width + 100);
    }
  }
}
