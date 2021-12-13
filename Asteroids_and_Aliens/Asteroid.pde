class Asteroid extends Obstacle {

  color c = color(random(100, 200));

  Asteroid(float w_, float h_, PVector xPos_, PVector yPos_, PVector speed_) {
    w = w_;
    h = h_;
    xPos = xPos_;
    yPos = yPos_;
    speed = speed_;

    w *= random(0.5, 2);
    h *= random(0.5, 2);
  }

  void display() {
    fill(c);

    ellipse(xPos.x, yPos.y, w, h);
  }

  void move() {
    yPos.add(new PVector(0, sin(100)*random(1, 2))) ;
    xPos.sub(speed);
    yPos.sub(speed);

    if (yPos.y <= 0 || yPos.y >= 800 || xPos.x <= 0) {
      yPos.y = random(-200, 1000);
      xPos.x = random(1650, 4000);
    }
  }
}
