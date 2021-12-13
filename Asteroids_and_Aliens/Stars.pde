class Star extends Object {

  color c = color(random(240, 255), random(240, 255), random(240, 255));

  Star(float w_, float h_, PVector xPos_, PVector yPos_, PVector speed_) {
    w = w_;
    h = h_;
    xPos = xPos_;
    yPos = yPos_;
    speed = speed_;

    w *= random(0.1, 0.3);
    h = w;
  }

  void display() {
    fill(c);

    ellipse(xPos.x, yPos.y, w, h);
  }

  void move() {
    xPos.sub(speed);
    yPos.sub(speed);
    yPos.y = random(0, 800);
    xPos.x = random(1650, 4000);
  }
}
