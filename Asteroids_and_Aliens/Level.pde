class Level extends Object {

  int asteroidNumber, alienNumber, scoreMultiplyer;

  Level(int asteroidNumber_, int alienNumber_, int scoreMultiplyer_) {

    asteroidNumber = asteroidNumber_;
    alienNumber = alienNumber_;
    scoreMultiplyer = scoreMultiplyer_;
  }



  void spawnAsteroids() {
    w = random(20, 40);
    h = random(20, 40);
    for (int i = 0; i < asteroidNumber; i++) {
     // println(asteroidNumber);
      println(i);
      obstacleList.add(new Asteroid(w, h, new PVector(random(1600, 2400), 0), new PVector(0, random(0,800)), new PVector(random(1,15), random(-10,10))));
    }
  }
}
