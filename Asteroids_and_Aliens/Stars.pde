class Star extends Object {

  color c = color(random(220, 255), random(220, 255), random(220, 255));

  Star(float w_, float h_, PVector xPos_, PVector yPos_, PVector speed_) {
    w = w_;
    h = h_;
    xPos = xPos_;
    yPos = yPos_;
    speed = speed_;

    w *= random(0.1, 0.3);
    h = w;
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(xPos.x, yPos.y, w, h);
  }

  void move() {

    xPos.sub(speed);
    println("teststar pos: " + xPos.x + "  " + yPos.y);
    //yPos.sub(speed);

    if (yPos.y > height || yPos.y < 0 || xPos.x < 0) {
      yPos.y = random(0, 800);
      xPos.x = random(width, width + 100);
    }
  }
}
