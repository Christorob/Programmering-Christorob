class Spaceship extends Object {

  int health;

  Spaceship(int w_, int h_, PVector pos_, PVector speed_, int health_) {

    w = w_;
    h = h_;
    pos = pos_;
    speed = speed_;
    health = health_;
  }

  void display() {
    if (alive== true) {
      fill(255, 100, 100);
      rect(pos.x, pos.y, w, h);
      textSize(20);
      text(int(health) + " health left", 50, 50);
    }
  }

  void moveUp() {
    pos.y -= speed.y;
  }

  void moveDown() {
    pos.y += speed.y;
  }

  void collide() {
    for (Spaceship s : shipList) {
      for (Obstacle o2 : obstacleList) {
        if ( dist(o2.pos.x, o2.pos.y, s.pos.x, s.pos.y) <= 50) { 
          //if ( o2.pos.x - s.pos.x <= 50 && o2.pos.y - s.pos.y <= 30 || o2.pos.x - s.pos.x <= -50 && o2.pos.y - s.pos.y <= -30 ) {

          o2.pos.x = random(2000, 3000);

          collisionCount++;
          println("Collision! Number of collisions: " + collisionCount);
          s.health--;
        }
      }
    }
  }
  void death() {
    for (Spaceship s : shipList) {
      if (s.health <= 0) {
        alive = false;
      }
    }
  }
}
