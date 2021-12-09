class Asteroid extends Obstacle {

  Asteroid(float w_, float h_, PVector xPos_, PVector yPos_, PVector speed_) {
    w = w_;
    h = h_;
    xPos = xPos_;
    yPos = yPos_;
    speed = speed_;
  }

  void display() {
    fill(255);
    ellipse(xPos.x, yPos.y, w, h);

  }

  void move() {
    speed.y += 10 + sin(speed.y)*0.01;
    xPos.sub(speed);
    yPos.sub(speed);
    println(xPos, yPos);

  }
}
