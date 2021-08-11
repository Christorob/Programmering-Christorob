/*

PVector x;
PVector y;
PVector x_ = new PVector(100,100);
PVector y_ = new PVector(50,50);

x_.add(y_);

println(x_);


//Metode 1
PVector.sub(x_,y_);

println(x_);

//Metode 2
x_.sub(y_);

println(x_);

*/


PVector location;
PVector velocity;

PVector locationTemp = new PVector(100,100);
PVector velocityTemp = new PVector(1,3.3);

void setup() {
  size(640,360);
  location = new PVector(100,100);
  velocity = new PVector(2.5,5);
}
 
void draw() {
  background(255);
 
  location.add(velocity);

  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }
 
  stroke(0);
  fill(175);
  ellipse(location.x,location.y,16,16);
}
