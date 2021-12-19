class Skater {

  int currentFrame, loopFrames, offset, delay ;
  int x, y, w, h;
  boolean idle, trick, fail;

  Skater() {
    x = width/2;
    y = height - 150;
    w = 640;
    h = 320;
    currentFrame = 0;
    loopFrames = 7;
    offset = 0;
    idle = false;
    trick = false;
    fail = true;
    delay = 0;
  }

  void display() {
    imageMode(CENTER);
    image(skaterImages[currentFrame + offset], x, y, w, h);
  }

  void updateFrames() {

    if (idle == true && trick == false && fail == false) {
      offset = 0;
      loopFrames = 7;
    }

    if (idle == false && trick == true && fail == false) {
      offset = 7;
      loopFrames = 17;
    }

    if (idle == false && trick == false && fail == true) {
      offset = 25;
      loopFrames = 8;
    }
    
    
    if (delay == 0){ 
      currentFrame = (currentFrame + 1) % loopFrames;
  }
    
    delay = (delay + 1) % 1;
 
   /*
    if(x < width + 100){
      x += 20;
    } else {
    x = -100;
    idle = false;
    trick = false;
    fail = true;
    }
    */
  }
}
