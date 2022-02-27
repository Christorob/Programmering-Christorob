class AlienLaser extends Laser {

  boolean alienLaserOnscreen = true;

  AlienLaser(PVector pos_, PVector speed_) {
    super(pos_, speed_);
  }

  void display() {

    if (laserOnscreen == true) {
      fill (#F05757, 200);
      ellipse(pos.x, pos.y, random(10, 40), random(1, 10));
      //println("Test Laser Display");
    }
  }
  
  void collide() {
    for (Spaceship s : shipList) {
      if ( dist(s.pos.x, s.pos.y, pos.x, pos.y) <= s.h) {
        alienLaserOnscreen = false;
        println("Current health: " + s.health);
        //if (frameCount % 100 == 0) {
        s.health--;
        //}
      }
    }
  }
}
