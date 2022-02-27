class Alien extends Obstacle {

  float i;
  float rotation;
  int shootCycle = int(random(20, 200)), health = int(random(3, 6));

  Alien(float w_, float h_, PVector pos_, PVector speed_, float rotation_, int health_) {
    w = w_;
    h = h_;
    pos = pos_;
    speed = speed_;
    rotation = rotation_;
    health = health_;

    w *= random(1, 2.5);
    h = w / 2;
  }

  void shoot() {
    if (health > 0) {
      if (frameCount % shootCycle == 0) {
        alienLaserList.add(new AlienLaser(new PVector(pos.x, pos.y), new PVector (-30, 0)));
      }
    }
  }


  void display() {
    if (health > 0) {
      push();
      fill(random(255), random(255), random(255));
      translate(pos.x, pos.y);
      rotate(i / 3);
      rect(0, 0, w, h);
      i += sin(rotation);
      pop();
    }
  }

  void move() {
    if (health > 0) {
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
}
