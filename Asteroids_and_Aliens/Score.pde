class Score extends Object {

  int score;

  Score(int score_){
    score = score_;
  }

  void display() {
    text ("Score: " + score, 50, 50);
  }

  void updateScore() {
    for (Level l : levelList) {
      while ( l.levelID == currentLevel) {
        score = score + (1 * l.scoreMultiplyer) ;
        println("TESTETSTETSTETSTET");
      }
    }
  }
}
