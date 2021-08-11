PVector location1;
PVector location2;
PVector location3;

float r = 0, g = 0, b = 0, o = 5;

PVector velocity;
PVector acceleration;
float mass;


void setup() {
  background(0);
  fullScreen();

  location1 = new PVector(512, 512);
  location1.limit(200);

  
  location2 = new PVector(512, 512);
  location2.limit(200);
  
  
  location3 = new PVector(512, 512);
  location3.limit(200);
  
  
  noStroke();
}


void draw() {

  velocity = new PVector(width/2,height/2);
  

  location1.add(velocity);
  fill(255, 50, 100);
  ellipse(location1.x, location1.y, 24, 24);
  
  

  location2.add(velocity);
  fill(100, 50, 255);
  ellipse(location2.x, location2.y, 16, 16);

  location3.add(velocity);
  fill(25, 250, 100);
  ellipse(location3.x, location3.y, 12, 12);



  fill(color(r, g, b, o));
  rect(0, 0, 2048, 1200);
}



void applyForce(PVector force) {

}
