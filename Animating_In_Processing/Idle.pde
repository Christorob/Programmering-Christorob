class Skater {

  int currentFrame, loopFrames, offset, delay ;
  int x, y, w, h;
  boolean idle, trick, fail;

  Skater() {
    x = -100;
    y = height - 150;
    w = 640;
    h = 320;
    currentFrame = 0;
    loopFrames = 7;
    offset = 0;
    idle = true;
    trick = false;
    fail = false;
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
      offset = 0;
      loopFrames = 0;
    }


    if (delay == 0) { 
      currentFrame = (currentFrame + 1) % loopFrames;
    }

    delay = (delay + 1) % 2;

    if (x < width + 100) {
      x += 10;
    } else {
      x = -100;
      idle = false;
      trick = true;
    }
  }
}
