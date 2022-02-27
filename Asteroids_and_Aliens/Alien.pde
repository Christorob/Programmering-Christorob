class Alien extends Obstacle {

  color c1 = color(random(50, 250));
  color c2 = color(random(50, 200), random(50, 200), random(50, 200));
  float i;
  float rotation;

  Alien(float w_, float h_, PVector pos_, PVector speed_, float rotation_) {
    w = w_;
    h = h_;
    pos = pos_;
    speed = speed_;
    rotation = rotation_;

    w *= random(1, 2.5);
    h = w / 2;
  }

  void shoot() {
  }


  void display() {
    //Reason for there being 2: second one adds tint of colour.
    push();
    fill(c1);
    translate(pos.x, pos.y);
    rotate(i);
    rect(0, 0, w, h);
    i += sin(rotation);
    pop();

    push();
    fill(c2, 10);
    translate(pos.x, pos.y);
    rotate(i);
    rect(0, 0, w, h);
    i += sin(rotation);
    pop();
  }

  void move() {
    pos.sub(new PVector(random(-1, 1), random(-1, 1)));
    pos.y -= sin(speed.x);

    if (pos.y <= -w || pos.y >= height + h || pos.x <= 0 - w) {
      pos.y = random(-100, height + 100);
      pos.x = random(width + 100, 4000);
    }
  }
}
