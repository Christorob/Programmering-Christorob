class Score extends Object {

  int score;

  Score(){
  
  }

  void display() {
    text ("Score: " + score, 50, 50);
  }

  void updateScore() {
    for (Level l : levelList) {
      while ( l.levelID == currentLevel) {
        score = score + (1 * l.scoreMultiplyer) ;
      }
    }
  }
}
