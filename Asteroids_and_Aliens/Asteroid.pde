class Asteroid extends Obstacle {

  color c = color(random(100, 200));

  Asteroid(float w_, float h_, PVector pos_, PVector speed_) {
    w = w_;
    h = h_;
    pos = pos_;
    speed = speed_;

    w *= random(0.5, 2);
    h *= random(0.5, 2);
  }

  void display() {
    fill(c);

    ellipse(pos.x, pos.y, w, h);
  }

  void move() {
    pos.add(new PVector(0, sin(100)*random(-3, 3))) ;
    pos.x -= speed.x;
    pos.sub(new PVector(0, 10*(random(-0.25,0.25))));


    if (pos.y <= -w || pos.y >= height + h || pos.x <= 0 - w) {
      pos.y = random(-200, 1000);
      pos.x = random(1650, 4000);
    }
  }
}
