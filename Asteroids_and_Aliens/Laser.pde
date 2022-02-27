class Laser extends Object {

  boolean laserOnscreen = true;

  Laser(PVector pos_, PVector speed_) {
    pos = pos_;
    speed = speed_;
  }

  void display() {

    if (laserOnscreen == true) {
      fill (#1AFF73, 200);
      ellipse(pos.x, pos.y, random(10, 40), random(1, 10));
      //println("Test Laser Display");
    }
    //println(laserList.size());
  }

  void move() {
    pos.add(speed);
  }

  void collide() {
    for (Laser l : laserList) { 

      for (Obstacle o2 : obstacleList) {
        for (Score s : scoreList) {
          if ( dist(o2.pos.x, o2.pos.y, l.pos.x, l.pos.y) <= o2.w) {
            o2.pos.x = random(2000, 3000);
            //println("Score is: " + s.score);
            s.score += random(50, 100);
            //println("Score is: " + s.score);
            //println("Laser hit!");
          }
          for (Alien a : alienList) {
            if ( dist(a.pos.x, a.pos.y, l.pos.x, l.pos.y) <= a.w) {
              a.health--;
            }
            if (laserOnscreen == false) {
              laserList.remove(o2);
            }
          }
        }
      }
    }
  }
}
