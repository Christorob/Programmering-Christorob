float xSize = 1000, ySize = 1000;
float xBall = 128, yBall = 32; 
float xSpeed = 4, ySpeed = 4;
float boundary = 1;

float r = 255;
float g = 0;
float b = 127.5;

void setup(){
  size(1024, 1024);
  rectMode(CENTER);
    print ("Hej Anders :P");}
  

void draw(){
  clear();
    background(b, r, g);
  
//Ball
  fill(r, g, b);
  circle(xBall, yBall, 24);
    xBall += xSpeed;
    yBall += ySpeed;
  
//Box
  noFill();
    stroke(g, b, r);
    strokeWeight(3);
    
  rect(512, 512, xSize, ySize);
    xSize *= boundary;
    ySize *= boundary;
    boundary *= 0.999995;
    
  if(xSize <= 0){xSize = 0;}
  if(ySize <= 0){ySize = 0;}

//Collision
  if((xBall) > width/2 + xSize/2){
    xSpeed *= -1;
r = random(255);  
g = random(255);
b = random(255);
}  
    
  if((yBall) > height/2 + xSize/2){
    ySpeed *= -1;
r = random(255);  
g = random(255);
b = random(255);  
}
  
  if((xBall) < width/2 - xSize/2){
    xSpeed *= -1;
r = random(255);  
g = random(255);
b = random(255);  
}
  
  if((yBall) < height/2 - xSize/2){
    ySpeed *= -1;
r = random(255);  
g = random(255);
b = random(255);  
}
  
  
  if(xBall > width/2+xSize/2){
    xBall = width/2+xSize/2;}
  
  if(xBall < width/2-xSize/2){
    xBall = width/2-xSize/2;}
  
  if(yBall > height/2+ySize/2){
    yBall= height/2+ySize/2;}
  
  if(yBall < height/2-ySize/2){
    yBall= height/2-ySize/2;}
  
}  
