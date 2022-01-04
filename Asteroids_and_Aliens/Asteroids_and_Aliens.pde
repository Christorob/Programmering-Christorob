ArrayList<Object> objectList = new ArrayList<Object>();
ArrayList<Star> starList = new ArrayList<Star>();
ArrayList<Obstacle> obstacleList = new ArrayList<Obstacle>();
ArrayList<Spaceship> shipList = new ArrayList<Spaceship>();
ArrayList<Level> levelList = new ArrayList<Level>();

void setup() {
  size(1600, 800);
  imageMode(CENTER);
  frameRate(60);
  fill(255);
  shipList.add(new Spaceship(100, 60, new PVector(100, 0), new PVector(0, 100), new PVector(25, 25)));
  levelList.add(new Level(10, 0, 1));


  for (Level l : levelList) {
    l.spawnAsteroids();
  }
}


void draw() {
  clear();


  if (keyPressed) {
    controls();
  }

  for (Star s : starList) {
    s.display();
    s.move();
  }

  for (Spaceship s : shipList) {
    s.display();
  }

  for (Obstacle o2 : obstacleList) {
    o2.display();
    o2.move();
  }
}

void controls() {
  for (Spaceship s : shipList) {
    if (s.yPos.y >= (s.h)/4) {
      if (keyCode == UP) {
        s.moveUp();
      }
    }
    if (s.yPos.y <= 800-(s.h)) {
      if (keyCode == DOWN) {
        s.moveDown();
      }
    }
  }
}

void debug() {
  println("test");
}
