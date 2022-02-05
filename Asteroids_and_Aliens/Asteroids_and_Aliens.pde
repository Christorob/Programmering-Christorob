// TO DO!!!!!!!!!!!!!!:

// Laser class with collision, and ammo (refueling system)
// Alien movement, laser aiming, collison
// Multiple Levels 
// Unlocks using upgrades (not sure if i can pull this off)
// Score calculator and display WIP
// Highscore saver


ArrayList<Object> objectList = new ArrayList<Object>();
ArrayList<Star> starList = new ArrayList<Star>();
ArrayList<Obstacle> obstacleList = new ArrayList<Obstacle>();
ArrayList<Spaceship> shipList = new ArrayList<Spaceship>();
ArrayList<Level> levelList = new ArrayList<Level>();
ArrayList<Laser>laserList = new ArrayList<Laser>();

boolean up, down, shoot, alive;
int collisionCount, currentLevel;

void setup() {
  alive = true;
  size(1600, 800);
  background(0);
  imageMode(CENTER);
  rectMode(CENTER);
  frameRate(60);
  fill(255);

  objectList.add(new Score()); //<>//

  //LEVELS: Asteroid no, Alien no, Score Mult, Spaceship hp, level ID, level active?
  levelList.add(new Level(5, 0, 1, 10, 1, false));
  levelList.add(new Level(10, 0, 2, 12, 2, false));
  levelList.add(new Level(15, 0, 3, 14, 3, false));
  levelList.add(new Level(20, 0, 4, 16, 4, false));
  levelList.add(new Level(25, 0, 5, 18, 5, true));


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

  //Object classes functions being called
  
  for (Object o : objectList) {
    o.display();
    
  }
  
  for (Star s : starList) {
    s.display();
    s.move();
  }

  for (Spaceship s : shipList) {
    s.display();
    s.collide();
    s.death();
  }

  for (Obstacle o2 : obstacleList) {
    o2.display();
    o2.move();
  }

  for (Level l1 : levelList) {
    if (l1.levelActive == true) {
      l1.display();
    }
  }

  for (Laser l2 : laserList) {
    l2.move();
    l2.display();
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
    
    if (shoot == true) { 
      laserList.add(new Laser(new PVector(s.pos.x, s.pos.y), new PVector (30, 0)));
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
