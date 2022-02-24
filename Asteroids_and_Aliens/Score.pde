class Score extends Object {

  int score;

  Score(int score_) {
    score = score_;
  }

  void display() {
    fill(0);
    rect (160, 44, 90, 20);
    push();
    fill(255);
    text ("Score: " + score, 50, 50);
    pop();
  }

  void updateScore() {
    //println("TEST1");
    for (Level l : levelList) {
      if ( l.levelID == currentLevel) {
        score = score + (1 * l.scoreMultiplyer) ;
        //println("TEST2 " + l.scoreMultiplyer);
      }
    }
  }
}
