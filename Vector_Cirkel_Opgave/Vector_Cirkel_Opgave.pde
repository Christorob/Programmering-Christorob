PVector location1;
PVector location2;
PVector location3;
PVector location4;
PVector location5;
PVector location6;
float r = 5, g = 5, b = 5, o = 10;

void setup() {
  background(5,5,5,95);
  fullScreen();
  frameRate(60);

  location1 = new PVector(512, 512);
  location1.limit(200);
  location2 = new PVector(-512, 512);
  location2.limit(200);
  location3 = new PVector(512, -512);
  location3.limit(200);
  location4 = new PVector(512, 512);
  location4.limit(200);
  location5 = new PVector(512, 512);
  location5.limit(200);
  location6 = new PVector(-512, 512);
  location6.limit(200);
  noStroke();
}


void draw() {

  push();
  translate(width/2, height/2);
  location1.rotate(sin(PI/100));
  fill(200, 250, 50, random(95,100));
  ellipse(location1.x, location1.y, random(8,16), random(8,16));

  translate(location1.x, location1.y);
  location2.rotate(0.012);
  fill(50, 200, 250, random(95,100));
  ellipse(location2.x, location2.y, random(7,14), random(7,14));

  translate(location2.x, location2.y);
  location3.rotate(-0.02);
  fill(50, 250, 200, random(95,100));
  ellipse(location3.x, location3.y, random(6,12), random(6,12));
  
  translate(location3.x, location3.y);
  location3.rotate(PI/300);
  fill(250, 200, 50, random(95,100));
  ellipse(location4.x, location4.y, random(5,10), random(5,10));
  
  translate(location4.x, location4.y);
  location3.rotate(-0.002);
  fill(200, 50, 250, random(95,100));
  ellipse(location5.x, location5.y, random(4,8), random(4,8));
  
  translate(location5.x, location5.y);
  location3.rotate(-0.001);
  fill(250, 50, 200, random(95,100));
  ellipse(location6.x, location6.y, random(3,6), random(3,6));
  pop();


  fill(color(r, g, b, o));
  rect(0, 0, 2048, 1200);
  
  fill(random(255),random(255),random(255),random(95,100));
  //ellipse(mouseX, mouseY, random(10,30), random(10,30));
}
