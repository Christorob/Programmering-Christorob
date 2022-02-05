class Score extends Object {

  int score = 0;

  Score(){
  
  }

  void display() {
    text ("Score: " + score, 50, 75);
  }

  void updateScore() {
    for (Level l : levelList) {
      if ( l.levelID == currentLevel) {
        score += score * l.scoreMultiplyer ;
      }
    }
  }
}
