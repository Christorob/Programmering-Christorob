float x0 = 200, y0 = 600, xBird, yBird, g = 9.82, v0, u0, A, t;
boolean skudt = false;
void setup(){
  size(1200, 800);
  textSize(25);
}

void draw(){
  clear();
  lines();
  circle(xBird, yBird, 10);
  
  if(skudt == false){
  
    
  }
  
}

void mousePressed(){
  skudt = true;
  launchBird();

}

void lines(){
 stroke(255);
  line(mouseX,mouseY,x0,y0);
  line(x0, y0, x0, mouseX);
}

void launchBird(){

  xBird = v0 * cos(A) * t + x0;
  yBird = -0.5 * g * t * t +v0 * sin(A) * t + y0;
  t++;
}
