class Alien extends Obstacle {

  color c1 = color(random(50, 250));
  color c2 = color(random(50, 200), random(50, 200), random(50, 200));
  float i;
  float rotation;
  int shootCycle = int(random(20, 200));

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
    if (frameCount % shootCycle == 0) {
      alienLaserList.add(new AlienLaser(new PVector(pos.x, pos.y), new PVector (-30, 0)));
    }
  }


  void display() {
    //Reason for there being 2: second one adds tint of colour.
    push();
    //fill(c1);
    fill(255);
    translate(pos.x, pos.y);
    rotate(i / 3);
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
    pos.sub(new PVector (random(1, 3), random(-2, 2)));
    pos.y -= sin(speed.y)*10;
    pos.x -= 1;

    if (pos.x <= 0 - w) {
      pos.y = random(-100, height + 100);
      pos.x = random(width + 100, 4000);
    }

    if (pos.y <= -w * 2 || pos.y >= height + (h * 2) ) {
      speed.mult(-1);
    }
  }
}
