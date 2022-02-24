class Level extends Object {

  int asteroidNumber, alienNumber, scoreMultiplyer, health, levelID;
  boolean levelActive;

  Level(int asteroidNumber_, int alienNumber_, int scoreMultiplyer_, int health_, int levelID_, boolean levelActive_) {
    health = health_;
    asteroidNumber = asteroidNumber_;
    alienNumber = alienNumber_;
    scoreMultiplyer = scoreMultiplyer_;
    levelID = levelID_;
    levelActive = levelActive_;
  }

  void display() {
    push();
    fill(255);
    textSize(20);
    text ( "Current level: " + levelID, 50, 25);
    //println("Level + score test 1");
    pop();
  }

  void spawnAsteroids() {

    if (levelActive == true) {
      w = random(20, 40);
      h = random(20, 40);
      for (int i = 0; i < asteroidNumber; i++) {
        // println(asteroidNumber);
        println("AsteroidGen " + (i + 1) + " successful.");
        obstacleList.add(new Asteroid(w, h, new PVector(random(1600, 3200), random(0, 800)), new PVector(random(5, 15), random(6, 10)), random (-0.1, 0.1)));
      }
    }
  }

  void spawnSpaceship() {
    if (levelActive == true) {
      shipList.add(new Spaceship(100, 60, new PVector(150, height/2), new PVector(18, 18), health));
    }
  }


}
