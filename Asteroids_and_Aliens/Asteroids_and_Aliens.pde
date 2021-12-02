ArrayList<Object> objectList = new ArrayList<Object>();
ArrayList<Obstacle> obstacleList = new ArrayList<Obstacle>();
ArrayList<Spaceship> shipList = new ArrayList<Spaceship>();

void setup() {
  size(1600, 900);
  imageMode(CENTER);
  frameRate(60);
  fill(255);
  shipList.add(new Spaceship(100, 100, new PVector(100,0), new PVector(0,100), new PVector(10,10)));

}


void draw() {
  clear();

  for (Object o : objectList) {
    o.display();
    o.move();
  }

   for (Spaceship s : shipList) {
    s.display();
    
  }
}


void keyed() {
  for (Spaceship s : shipList) {
    if (keyCode == UP) {
      s.moveUp();      
    }


    if (keyCode == DOWN) {
      s.moveDown();
    }
  }
}
