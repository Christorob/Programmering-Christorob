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


    //for (Laser l : laserList) {

    /*for (int i = laserList.size() - 1; i >= 0; i--) {
     if (pos.x > width + 100) {
     laserOnscreen = false;
     laserList.remove(i); // THIS IS WHAT ISNT WORKING
     //}
     }
     }*/
  }


  void collide() {
    for (Laser l : laserList) { 
      for (Obstacle o2 : obstacleList) {
        if ( dist(o2.pos.x, o2.pos.y, l.pos.x, l.pos.y) <= o2.w) {
          o2.pos.x = random(2000, 3000);
          //println("Laser hit!");
        }
        if (laserOnscreen == false) {
          laserList.remove(o2);
        }
      }
    }
  }
/*
  void deleteLaser() {
    for (int i = (laserList.size()); i >= 0; i--) {

      laserOnscreen = false;
      laserList.remove(i); 
      println("Laser test: " + laserList.size());
      if ( i != laserList.size()) {
        break; 
      }
    }
  }*/
}
