class Score extends Object {

  int score;

  Score(int score_) {
    score = score_;
  }

  void display() {   
    fill(0);
    text ("Score: " + score, 50, 50);  ;
  }

  void updateScore() {
    //println("TEST1");
    for (Level l : levelList) {
      if ( l.levelID == currentLevel) {
        if(frameCount%30==0){
          println("SCORE IS NOW: " + score);
          println("CURRENT LEVEL: " + currentLevel);
          score = score + (50*l.scoreMultiplyer) ;
          //println("TEST2 " + l.scoreMultiplyer);
        }
      }
    }
  }
  
  void changeLevel(){
    if(currentLevel<=4){
      if(score>currentLevel*1000){
        println("THE CURRENT LEVEL IS NOW ONE MORE");
        currentLevel++;
      }
    }
  }
}
