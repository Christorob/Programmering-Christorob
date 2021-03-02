SpinSpots spots;
//SpinArm arm;
SpinCyl cyl;

void setup() {
  size(640, 640);
 // arm = new SpinArm(width/2, height/2, 0.01);
  spots = new SpinSpots(width/2, height/2, -0.02, 90.0);
  cyl = new SpinCyl(width/2, height/2, 0.02);
}

void draw() {
  background(30);
  //arm.update();
  //arm.display();
  spots.update();
  spots.display();
  cyl.update();
  cyl.display();
  textSize(50);
  text("boy", 40, 50);
  text("girl", 540, 50);
}

class Spin {
  float x, y, speed;
  float angle = 0.0;
  Spin(float xpos, float ypos, float s) {
    x = xpos;
    y = ypos;
    speed = s;
  }
  void update() {
    angle += speed;
  }
}

class SpinSpots extends Spin {
  float dim;
  SpinSpots(float x, float y, float s, float d) {
    super(x, y, s);
    dim = d;
  }
  void display() {
    noStroke();
    fill(232, 207, 221);
    pushMatrix();
    translate(x, y);
    angle += speed;
    rotate(sin(angle));
    ellipse(-dim/2, 0, dim, dim);
    ellipse(dim/2, 0, dim, dim);
    popMatrix();
  }
}

class SpinCyl extends Spin {

SpinCyl(float x, float y, float s) {
    super(x, y, s);
  }
  void display() {
    strokeWeight(50);
    stroke(252, 227, 241);
    pushMatrix();
    translate(x, y);
    angle += speed;
    rotate((sin(angle))+80);
    line(0, 0, 180, 0);
    popMatrix();
  }
}
