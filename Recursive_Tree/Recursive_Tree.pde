float v = 10, r=255, g=255, b=255, number, branchNo, mouseAngle;

void setup() {
  size(1600, 1000);
  strokeWeight(1);
  background(0);
}

void draw() {
  clear();
  number = 0;
  frameRate(30);
  stroke(r, g, b);
  tree(width/2, height, 0.7);
  //tree(width/4, height);
  //tree((width/4)*3, height);
}
