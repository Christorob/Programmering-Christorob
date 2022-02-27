class Asteroid extends Obstacle {

  color c1 = color(random(100, 200));
  color c2 = color(random(50, 200), random(50, 200), random(50, 200));
  float i;
  float rotation;

  Asteroid(float w_, float h_, PVector pos_, PVector speed_, float rotation_) {
    w = w_;
    h = h_;
    pos = pos_;
    speed = speed_;
    rotation = rotation_;

    w *= random(0.5, 2.5);
    h *= random(0.5, 2.5);
  }

  void display() {
    //Reason for there being 2: second one adds tint of colour.
    push();
    fill(c1);
    translate(pos.x, pos.y);
    rotate(i);
    ellipse(0, 0, w, h);
    i += rotation;
    pop();

    push();
    fill(c2, 10);
    translate(pos.x, pos.y);
    rotate(i);
    ellipse(0, 0, w, h);
    i += rotation;
    pop();
  }

  void move() {
    //pos.add(new PVector(0, sin(100)*random(-3, 3))) ;
    pos.x -= speed.x;
    pos.sub(new PVector(0, noise(millis()/10) * random(-2, 2)));
    pos.sub(new PVector(0, 10 * (random(-0.25, 0.25))));

    if (pos.y <= -w || pos.y >= height + h || pos.x <= 0 - w) {
      pos.y = random(-100, height + 100);
      pos.x = random(width + 100, 4000);
    }
  }
}
