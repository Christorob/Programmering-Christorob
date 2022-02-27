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
    //println(laserList.size());
  }

  void collide() {
    for (AlienLaser a : alienLaserList) { 
      for (Spaceship s1 : shipList) {
        if ( dist(s1.pos.x, s1.pos.y, a.pos.x, a.pos.y) <= s1.h) {
          s1.health -= 1;
          if (alienLaserOnscreen == false) {
            alienLaserList.remove(a);
          }
        }
      }
    }
  }
}
