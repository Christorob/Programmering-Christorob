// TO DO!!!!!!!!!!!!!!: //<>//
// WHY IS LEVELUP TESTER 3 FAILING?? also the levels are not being displayed or run? hmm -- robbindabankrobbinrobbindabank
// Alien movement, laser aiming, collison- pew pew collision go pRPFPAfAWwyuuu
// Multiple Levels WIP -- get outta the way bitchehss wip on the wayy
// Unlocks using upgrades (not sure if i can pull this off) -- pull this off u can do it woooo 
// Score calculator and display WIP -- wip again bitch get outta maaa wayyy
// Highscore saver -- hell yeah brauhh uwu
// YOU GOT TO LINE 206

ArrayList<Object> objectList = new ArrayList<Object>();
ArrayList<Star> starList = new ArrayList<Star>();
ArrayList<Obstacle> obstacleList = new ArrayList<Obstacle>();
ArrayList<Spaceship> shipList = new ArrayList<Spaceship>();
ArrayList<Level> levelList = new ArrayList<Level>();
ArrayList<Laser> laserList = new ArrayList<Laser>();
ArrayList<Score> scoreList = new ArrayList<Score>();
ArrayList<Alien> alienList = new ArrayList<Alien>();
ArrayList<AlienLaser> alienLaserList = new ArrayList<AlienLaser>();

boolean up, down, shoot, alive, hasAmmo = true;
int collisionCount, currentLevel = 0, laserCount, currentScore, ammoCount = 250, ammoCheckLevel = currentLevel;

void setup() {
  alive = true;
  size(1600, 800);
  background(0);
  imageMode(CENTER);
  rectMode(CENTER);
  frameRate(60);
  fill(255);

  scoreList.add(new Score(currentScore));

  //LEVELS: Asteroid no, Alien no, Score Mult, Spaceship hp, level ID, level active?
  levelList.add(new Level(1, 0, 1, 20, 0, true));

  //Star generation
  for (int i = 0; i < 300; i++) {
    // w, h, pos, speed
    starList.add(new Star(10, 10, new PVector(random(0, 2000), random(0, 800)), new PVector(random(0, 15), 0)));
    //println("StarGen " + (i + 1) + " successful.");
  }
}


void draw() {
  //clear();
  //println("------------------------asteroid no: " + obstacleList.size());
  //println("Aliens Present: " + alienList.size());

  //Streaking effect creation, used instead of clear()
  fill(0, 0, 0, 100);
  rect(width/2, height/2, width, height);

  for (Level l : levelList) {
    if (l.levelID != currentLevel) {
      l.levelActive = false;
      if (shipList.size() != 1) {
        l.spawnSpaceship();
      }
    }
  }


  //Death Detection (probably temporary)
  if (alive == false) {
    println("DEAD LOL");
    for (Score s : scoreList) {
      println("FINAL SCORE: " + s.score);
    }
    exit();
    return;
  }

  //Calling control function
  clearBox();
  controls();

  deleteLasers();

  for (Spaceship s2 : shipList) {
    s2.display();
    s2.collide();
    s2.death();
  }





  //Object classes functions being called

  for (Score s3 : scoreList) {
    s3.display();
    s3.updateScore();
    s3.changeLevel();
  }

  for (Level l1 : levelList) {
    if (l1.levelActive == true) {
      l1.display();
    }
  }

  for (Star s1 : starList) {
    s1.display();
    s1.move();
  }

  for (Obstacle o2 : obstacleList) {
    o2.display();
    o2.move();
  }

  for (Alien a1 : alienList) {
    a1.display();
    a1.move();
    a1.shoot();
  }
}



void deleteLasers() {

  //For Player lasers
  for (Laser l2 : laserList) {
    if (l2.pos.x > width + 100) {
      l2.laserOnscreen = false;
    }
    if (l2.laserOnscreen == true) {
      l2.move();
      l2.display();
      l2.collide();
    }
  }

  for (int i = (laserList.size() - 1); i >= 0; i--) {
    Laser l = laserList.get(i);
    if (!l.laserOnscreen) {
      laserList.remove(i);
    }
  }

  //For Alien Lasers
  for (AlienLaser a2 : alienLaserList) {
    for (Spaceship s : shipList) {
      if (a2.pos.x < -100 || dist(s.pos.x, s.pos.y, a2.pos.x, a2.pos.y) <= s.h) {
        a2.alienLaserOnscreen = false;
      }
    }
    if (a2.alienLaserOnscreen == true) {
      a2.move();
      a2.display();
      a2.collide();
    }
  }

  for (int i = (alienLaserList.size() - 1); i >= 0; i--) {
    AlienLaser a = alienLaserList.get(i);
    if (!a.alienLaserOnscreen) {
      alienLaserList.remove(i);
    }
  }
}

//Controls function
void controls() {
  for (Spaceship s : shipList) {
    if (s.pos.y >= (s.h)/4) {
      if (up) {
        s.moveUp();
      }
    }
    if (s.pos.y <= 800-(s.h)) {
      if (down) {
        s.moveDown();
      }
    }
    fill(0);
    text (" Ammo remaining: " + ammoCount, 45, 100);
    if (shoot == true && hasAmmo == true) { 
      laserList.add(new Laser(new PVector(s.pos.x, s.pos.y), new PVector (30, 0)));
      laserCount++;
      //println("Lasers Shot: " + (laserCount));
      ammoCount--;
      if ( ammoCount == 0) {
        hasAmmo = false;
      } else {
        hasAmmo = true;
      }
    }
  }
}

void clearBox() {
  push();
  fill(255);
  rectMode(CORNER);
  //rect (160, 44, 90, 20);
  rect (0, 0, 280, 120);
  pop();
}

void ammoCheck() {
  if (currentLevel != ammoCheckLevel) {
    ammoCount += currentLevel * 50;
    hasAmmo = true;
    ammoCheckLevel = currentLevel;
  }
}

//LEVEL GENERATOR
void levelUp() {
  switch(currentLevel) {

  case 1:
    println("LEVELUP TESTER 0 (INIT)");
    clearBox();
    levelList.add(new Level(2, 0, 2, 20, 1, true));
    //levelList.get(currentLevel).levelActive = true;
    //levelList.get(currentLevel - 1).levelActive = false;
    ammoCheck();
    break;

  case 2:
    println("LEVELUP TESTER 1");
    clearBox();
    levelList.add(new Level(4, 0, 2, 25, 2, true));
    levelList.get(currentLevel).levelActive = true;
    levelList.get(currentLevel - 1).levelActive = false;

    if (levelList.get(currentLevel - 1).levelActive == true) println("Wack!?");
    ammoCheck();
    break;

  case 3:
    println("LEVELUP TESTER 2");
    clearBox();
    levelList.add(new Level(8, 1, 2, 30, 3, true));
    levelList.get(currentLevel).levelActive = true;
    levelList.get(currentLevel - 1).levelActive = false;
    ammoCheck();
    break;

  case 4:
    println("LEVELUP TESTER 3");
    clearBox();
    levelList.add(new Level(12, 2, 2, 35, 4, true));
    levelList.get(currentLevel).levelActive = true;
    levelList.get(currentLevel - 1).levelActive = false;
    ammoCheck();
    break;

  case 5:
    println("LEVELUP TESTER 4");
    clearBox();
    levelList.add(new Level(32, 4, 2, 40, 5, true));
    levelList.get(currentLevel).levelActive = true;
    levelList.get(currentLevel - 1).levelActive = false;
    ammoCheck();
    break;

  case 6:
    println("LEVELUP TESTER 5");
    clearBox();
    levelList.add(new Level(48, 6, 2, 45, 6, true));
    levelList.get(currentLevel).levelActive = true;
    levelList.get(currentLevel - 1).levelActive = false;
    ammoCheck();
    break;

  case 7:
    println("LEVELUP TESTER 6");
    clearBox();
    levelList.add(new Level(64, 8, 2, 45, 6, true));
    levelList.get(currentLevel).levelActive = true;
    levelList.get(currentLevel - 1).levelActive = false;
    ammoCheck();
    break;

  case 8:
    println("LEVELUP TESTER 7");
    clearBox();
    levelList.add(new Level(100, 12, 2, 45, 6, true));
    levelList.get(currentLevel).levelActive = true;
    levelList.get(currentLevel - 1).levelActive = false;
    ammoCheck();
    break;

  case 9:
    println("LEVELUP TESTER 8");
    clearBox();
    levelList.add(new Level(120, 16, 2, 45, 6, true));
    levelList.get(currentLevel).levelActive = true;
    levelList.get(currentLevel - 1).levelActive = false;
    ammoCheck();
    break;

  case 10:
    println("LEVELUP TESTER 9");
    clearBox();
    levelList.add(new Level(150, 20, 2, 45, 6, true));
    levelList.get(currentLevel).levelActive = true;
    levelList.get(currentLevel - 1).levelActive = false;
    ammoCheck();
    break;
  }
}

void callObstacleGen() {
  // Level spawning spaceship and asteroids
  for (Level l : levelList) {
    if (currentLevel == l.levelID && l.levelActive == true) {
      l.spawnAsteroids();
      l.spawnAliens();
      //println("I AM WORKING " + l.levelID);
    }
  }
}

//Keycodes for controls
void keyPressed() {
  if (keyCode == UP) {
    up = true;
  }
  if (keyCode == DOWN) {
    down = true;
  }
  if (key == ' ') {
    shoot = true;
    //println("Shooting beginning...");
  }
}

void keyReleased() {
  if (keyCode == UP) {
    up = false;
  }
  if (keyCode == DOWN) {
    down = false;
  }
  if (key == ' ') {
    shoot = false;
    //println("Shooting ending...");
  }
}
