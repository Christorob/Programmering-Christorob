// TO DO!!!!!!!!!!!!!!:
// CREATE NEW POS PVECTOR INSTEAD OF xPos and yPos DONE
// Rotate asteroids DONE
// Collision detection for objects + lasers later SEMI DONE
// Laser class
// Alien movement
// Multiple Levels
// Unlocks using upgrades
// Score calculator and display
// Highscore saver


ArrayList<Object> objectList = new ArrayList<Object>();
ArrayList<Star> starList = new ArrayList<Star>();
ArrayList<Obstacle> obstacleList = new ArrayList<Obstacle>();
ArrayList<Spaceship> shipList = new ArrayList<Spaceship>();
ArrayList<Level> levelList = new ArrayList<Level>();
boolean up, down, alive;
int collisionCount;

void setup() {
  alive = true;
  size(1600, 800);
  background(0);
  imageMode(CENTER);
  rectMode(CENTER);
  frameRate(60);
  fill(255);


  //LEVELS: Asteroid no, Alien no, Score Mult, Spaceship hp, level ID, level active?
  levelList.add(new Level(5, 0, 1, 10, 1, false));
  levelList.add(new Level(10, 0, 2, 12, 2, false));
  levelList.add(new Level(15, 0, 3, 14, 3, false));
  levelList.add(new Level(20, 0, 4, 16, 4, false));
  levelList.add(new Level(25, 0, 5, 18, 5, true));

  for (int i = 0; i < 200; i++) {
    starList.add(new Star(10, 10, new PVector(random(0, 2000), random(0, 800)), new PVector(random(0, 15), 0)));
    println("StarGen " + (i + 1) + " successful.");
  }

  for (Level l : levelList) {
    l.spawnAsteroids();
    l.spawnSpaceship();
  }
}


void draw() {
  //clear();



  if (alive == false) {
    println("DEAD LOL");
    exit();
    return;
  }

  controls();

  for (Star s : starList) {
    s.display();
    s.move();
  }

  fill(0, 0, 0, 100);
  rect(width/2, height/2, width, height);

  for (Spaceship s : shipList) {
    s.display();
    s.collide();
    s.death();
  }

  for (Obstacle o2 : obstacleList) {
    o2.display();
    o2.move();
  }

  for (Level l : levelList) {
    if (l.levelActive == true) {
      l.display();
    }
  }
}



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
  }
}






void keyPressed() {
  if (keyCode == UP) {
    up = true;
  }

  if (keyCode == DOWN) {
    down = true;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    up = false;
  }

  if (keyCode == DOWN) {
    down = false;
  }
}
