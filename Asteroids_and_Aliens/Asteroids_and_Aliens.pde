// TO DO!!!!!!!!!!!!!!:
// CREATE NEW POS PVECTOR INSTEAD OF xPos and yPos DONE
// Rotate asteroids DONE
// Collision detection for objects + lasers later
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
boolean up, down, alive = true;

void setup() {
  alive = true;
  size(1600, 800);
  background(0);
  imageMode(CENTER);
  frameRate(60);
  fill(255);

  shipList.add(new Spaceship(100, 60, new PVector(100, 100), new PVector(18, 18)));

  levelList.add(new Level(30, 0, 1));

  for (int i = 0; i < 100; i++) {
    starList.add(new Star(10, 10, new PVector(random(0, 2000), random(0, 800)), new PVector(random(0, 15), 0)));
    println("Test for stars: starGen " + i + " successful.");
  }

  for (Level l : levelList) {
    l.spawnAsteroids();
  }
}


void draw() {
  //clear();
  if (alive==true) {
    controls();


    for (Star s : starList) {
      s.display();
      s.move();
    }

    fill(0, 0, 0, 100);
    rect(0, 0, width, height);

    for (Spaceship s : shipList) {
      s.display();
    }

    for (Obstacle o2 : obstacleList) {
      o2.display();
      o2.move();
    }
  } else
  {
    exit();
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

void collide() {
  for (Spaceship s : shipList) {
    for (Obstacle o2 : obstacleList) {
      if ( s.pos.x - o2.pos.x <= 10) {
        println("Collision!");
      }
    }
  }
}
