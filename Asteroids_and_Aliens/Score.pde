class Score extends Object {

  int score;

  Score(int score_) {
    score = score_;
  }

  void display() {   
    fill(0);
    text ("Score: " + score, 50, 50);
    
  }

  void updateScore() {
    //println("TEST1");
    for (Level l : levelList) {
      if ( l.levelID == currentLevel) {
        score = score + (10 * l.scoreMultiplyer) ;
        //println("TEST2 " + l.scoreMultiplyer);
      }
    }
  }
}
