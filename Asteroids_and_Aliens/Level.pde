class Level extends Object {

  int asteroidNumber, alienNumber, scoreMultiplyer, health, levelID;

  Level(int asteroidNumber_, int alienNumber_, int scoreMultiplyer_, int health_, int levelID_) {
    health = health_;
    asteroidNumber = asteroidNumber_;
    alienNumber = alienNumber_;
    scoreMultiplyer = scoreMultiplyer_;
    levelID = levelID_;
  }



  void spawnAsteroids() {

    w = random(20, 40);
    h = random(20, 40);
    for (int i = 0; i < asteroidNumber; i++) {
      // println(asteroidNumber);
      println(i);
      obstacleList.add(new Asteroid(w, h, new PVector(random(1600, 3200), random(0, 800)), new PVector(random(5, 15), random(6, 10)), random (-0.1, 0.1)));
    }
  }

  void spawnSpaceship() {
    shipList.add(new Spaceship(100, 60, new PVector(100, 100), new PVector(18, 18), health));
  }
}
