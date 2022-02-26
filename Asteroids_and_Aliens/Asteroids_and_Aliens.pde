// TO DO!!!!!!!!!!!!!!: //<>//
// WHY IS LEVELUP TESTER 3 FAILING?? also the levels are not being displayed or run? hmm -- robbindabankrobbinrobbindabank
// Alien movement, laser aiming, collison- pew pew collision go pRPFPAfAWwyuuu
// Multiple Levels WIP -- get outta the way bitchehss wip on the wayy
// Unlocks using upgrades (not sure if i can pull this off) -- pull this off u can do it woooo 
// Score calculator and display WIP -- wip again bitch get outta maaa wayyy
// Highscore saver -- hell yeah brauhh uwu

ArrayList<Object> objectList = new ArrayList<Object>();
ArrayList<Star> starList = new ArrayList<Star>();
ArrayList<Obstacle> obstacleList = new ArrayList<Obstacle>();
ArrayList<Spaceship> shipList = new ArrayList<Spaceship>();
ArrayList<Level> levelList = new ArrayList<Level>();
ArrayList<Laser> laserList = new ArrayList<Laser>();
ArrayList<Score> scoreList = new ArrayList<Score>();

boolean up, down, shoot, alive, hasAmmo = true;
int collisionCount, currentLevel = 0, laserCount, currentScore, ammoCount = 500, ammoCheckLevel = currentLevel;

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

  levelList.add(new Level(5, 0, 1, 10, 1, true));
  /*levelList.add(new Level(25, 0, 2, 12, 2, false)); 
   levelList.add(new Level(40, 0, 3, 14, 3, false)); 
   levelList.add(new Level(60, 0, 4, 16, 4, false));
   levelList.add(new Level(85, 0, 5, 18, 5, false));*/

  //Star generation
  for (int i = 0; i < 300; i++) {
    // w, h, pos, speed
    starList.add(new Star(10, 10, new PVector(random(0, 2000), random(0, 800)), new PVector(random(0, 15), 0)));
    println("StarGen " + (i + 1) + " successful.");
  }
}

void draw() {
  //clear();
  //println(laserList.size());

  //nextLevel();


  for (Level l : levelList) {
    l.levelActive = false;
  }

  //Level Up function
  levelUp();

  //Death Detection (probably temporary)
  if (alive == false) {
    println("DEAD LOL");
    exit();
    return;
  }

  //Calling control function
  clearBox();
  controls();


  for (Spaceship s2 : shipList) {
    s2.display();
    s2.collide();
    s2.death();
  }
  //Streaking effect creation, used instead of clear()
  fill(0, 0, 0, 100);
  rect(width/2, height/2, width, height);


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
    //println("Lasers onscreen: " +  laserList.size());
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
    ammoCount += 100;
    hasAmmo = true;
    ammoCheckLevel = currentLevel;
  }
}


/*void levelUp() {
 
 switch(currentLevel) {
 
 case 1:
 println("LEVELUP TESTER 0 (INIT)");
 clearBox();
 levelList.get(0).levelActive = true;
 //levelList.add(new Level(10 * currentLevel, (currentLevel - 5), currentLevel, 4 * currentLevel, currentLevel, true));
 ammoCheck();
 break;
 
 case 2:
 println("LEVELUP TESTER 1");
 clearBox();
 levelList.get(1).levelActive = true;
 levelList.get(0).levelActive = false;
 if (levelList.get(0).levelActive == true) println("WACK?!");
 ammoCheck();
 break;
 
 case 3:
 println("LEVELUP TESTER 2");
 clearBox();
 levelList.get(2).levelActive = true;   
 levelList.get(1).levelActive = false;
 ammoCheck();
 break;
 
 case 4:
 println("LEVELUP TESTER 3");
 clearBox();
 levelList.get(3).levelActive = true;
 levelList.get(2).levelActive = false;
 ammoCheck();
 break;
 
 case 5:
 // println("LEVELUP TESTER 4");
 clearBox();
 levelList.get(4).levelActive = true;  
 levelList.get(3).levelActive = false;
 ammoCheck();
 break;
 
 case 6:
 // println("LEVELUP TESTER 5");
 clearBox();
 //levelList.get(5).levelActive = true;  
 levelList.get(4).levelActive = false;
 ammoCheck();
 break;
 }
 }*/

void levelUp() {

  switch(currentLevel) {

  case 1:
    println("LEVELUP TESTER 0 (INIT)");
    clearBox();
    //levelList.get(currentLevel).levelActive = true;
    //levelList.get(currentLevel - 1).levelActive = false;
    levelList.add(new Level(25, 0, 2, 12, 1, true));
    //levelList.add(new Level(10 * currentLevel, (currentLevel - 5), currentLevel, 4 * currentLevel, currentLevel, true));
    ammoCheck();
    break;

  case 2:
    println("LEVELUP TESTER 1");
    clearBox();
    levelList.get(1).levelActive = true;
    levelList.add(new Level(50, 0, 2, 12, 2, true));
    ammoCheck();
    break;

  case 3:
    println("LEVELUP TESTER 2");
    clearBox();
    levelList.get(currentLevel).levelActive = true;
    levelList.get(currentLevel - 1).levelActive = false;
    levelList.add(new Level(75, 0, 2, 12, 3, true));
    ammoCheck();
    break;

  case 4:
    println("LEVELUP TESTER 3");
    clearBox();
    levelList.get(currentLevel).levelActive = true;
    levelList.get(currentLevel - 1).levelActive = false;
    levelList.add(new Level(100, 0, 2, 12, 4, true));
    ammoCheck();
    break;

  case 5:
    // println("LEVELUP TESTER 4");
    clearBox();
    levelList.get(currentLevel).levelActive = true;
    levelList.get(currentLevel - 1).levelActive = false;
    levelList.add(new Level(125, 0, 2, 12, 5, true));
    ammoCheck();
    break;

  case 6:
    // println("LEVELUP TESTER 5");
    clearBox();
    levelList.get(currentLevel).levelActive = true;
    levelList.get(currentLevel - 1).levelActive = false;
    levelList.add(new Level(150, 0, 2, 12, 6, true));
    ammoCheck();
    break;
  }
}







void callObstacleGen() {
  // Level spawning spaceship and asteroids
  for (Level l : levelList) {
    if (currentLevel == l.levelID && l.levelActive == true) {
      l.spawnAsteroids();
      l.spawnSpaceship();
      println("I AM WORKING " + l.levelID);
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
    println("Shooting beginning...");
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
    println("Shooting ending...");
  }
}
