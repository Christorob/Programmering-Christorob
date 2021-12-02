ArrayList<Object> objectList = new ArrayList<Object>();
ArrayList<Obstacle> obstacleList = new ArrayList<Obstacle>();
ArrayList<Spaceship> shipList = new ArrayList<Spaceship>();

void setup() {
  size(1600, 900);
  imageMode(CENTER);
}


void draw() {
  clear();

  for (Object o : obstacleList) {
    o.display();
    o.move();

  }
}


void keyPressed() {
  for (Spaceship s : shipList) {
    if (key == UP) {
      s.moveUp();
    }

    if (key == DOWN) {
      s.moveDown();
    }
  }
}
