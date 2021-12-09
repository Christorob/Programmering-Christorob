class Level extends Object {

  int asteroidNumber, alienNumber, scoreMultiplyer;


  Level(int asteroidNumber_, int alienNumber_, int scoreMultiplyer_) {

    asteroidNumber = asteroidNumber_;
    alienNumber = alienNumber_;
    scoreMultiplyer = scoreMultiplyer_;
  }



  void spawnAsteroids() {
    w = random(10, 20);
    h = random(10, 20);
    for (int i = 0; i < asteroidNumber; i++) {
      println(asteroidNumber);
      println(i);
      obstacleList.add(new Asteroid(w, h, new PVector(100, 0), new PVector(0, 100), new PVector(10, 10)));
    }
  }
}
