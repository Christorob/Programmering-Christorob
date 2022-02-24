// TO DO!!!!!!!!!!!!!!: //<>//
// WHY IS LEVELUP TESTER 3 FAILING?? also the levels are not being displayed or run? hmm
// Alien movement, laser aiming, collison
// Multiple Levels WIP
// Unlocks using upgrades (not sure if i can pull this off)
// Score calculator and display WIP
// Highscore saver

ArrayList<Object> objectList = new ArrayList<Object>();
ArrayList<Star> starList = new ArrayList<Star>();
ArrayList<Obstacle> obstacleList = new ArrayList<Obstacle>();
ArrayList<Spaceship> shipList = new ArrayList<Spaceship>();
ArrayList<Level> levelList = new ArrayList<Level>();
ArrayList<Laser> laserList = new ArrayList<Laser>();
ArrayList<Score> scoreList = new ArrayList<Score>();

boolean up, down, shoot, alive, hasAmmo = true;
int collisionCount, currentLevel, laserCount, currentScore, ammoCount = 500;

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
  /* levelList.add(new Level(5, 0, 1, 10, 1, true));
   levelList.add(new Level(10, 0, 2, 12, 2, false)); 
   levelList.add(new Level(15, 0, 3, 14, 3, false)); 
   levelList.add(new Level(20, 0, 4, 16, 4, false));
   levelList.add(new Level(25, 0, 5, 18, 5, false));*/

  //Star generation
  for (int i = 0; i < 300; i++) {
    starList.add(new Star(10, 10, new PVector(random(0, 2000), random(0, 800)), new PVector(random(0, 15), 0)));
    println("StarGen " + (i + 1) + " successful.");
  }

  // Level spawning spaceship and asteroids
  for (Level l : levelList) {
    l.spawnAsteroids();
    l.spawnSpaceship();
  }
}

void draw() {
  //clear();
  //println(laserList.size());

  //nextLevel();

  levelUp();

  //Death Detection (probably temporary)
  if (alive == false) {
    println("DEAD LOL");
    exit();
    return;
  }

  //Calling control function
  controls();

  //Streaking effect creation, used instead of clear()
  fill(0, 0, 0, 100);
  rect(width/2, height/2, width, height);

  clearBox();

  //Object classes functions being called

  for (Score s3 : scoreList) {
    s3.display();
    s3.updateScore();
  }

  for (Level l1 : levelList) {
    //if (l1.levelActive == true) {
    l1.display();
    currentLevel = l1.levelID;
    //}
  }

  for (Star s1 : starList) {
    s1.display();
    s1.move();
  }

  for (Spaceship s2 : shipList) {
    s2.display();
    s2.collide();
    s2.death();
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
    if (!l.laserOnscreen) laserList.remove(i);
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
      println("Lasers Shot: " + (laserCount));
      ammoCount--;
      if ( ammoCount == 0) {
        hasAmmo = false;
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


void levelUp() {
  for (Score s : scoreList) {
    switch(s.score) {

    case 0:
      println("LEVELUP TESTER 0 (INIT)");
      clearBox();
      currentLevel = 1;
      levelList.add(new Level(5, 0, 1, 10, 1, true));
      levelList.get(0).levelActive = true;
      //levelList.add(new Level(10 * currentLevel, (currentLevel - 5), currentLevel, 4 * currentLevel, currentLevel, true));
      break;

    case 1000:
      println("LEVELUP TESTER 1");
      clearBox();
      currentLevel += 1;
      levelList.add(new Level(10, 0, 2, 12, 2, true)); 
      levelList.remove(0);
      levelList.get(0).levelActive = true;
      //levelList.add(new Level(10 * currentLevel, (currentLevel - 5), currentLevel, 4 * currentLevel, currentLevel, true));
      break;

    case 2000:
      println("LEVELUP TESTER 2");
      clearBox();
      currentLevel += 1;
      levelList.add(new Level(15, 0, 3, 14, 3, true)); 
      levelList.remove(0);
      levelList.get(0).levelActive = true;     
      break;

    case 4000:
      println("LEVELUP TESTER 3");
      clearBox();
      currentLevel += 1;
      levelList.add(new Level(20, 0, 4, 16, 4, true));
      levelList.remove(0);
      levelList.get(0).levelActive = true;      
      break;

    case 8000:
      println("LEVELUP TESTER 4");
      clearBox();
      //currentLevel += 1;
      levelList.add(new Level(25, 0, 5, 18, 5, true));
      levelList.remove(0);
      levelList.get(0).levelActive = true;       
      break;
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
