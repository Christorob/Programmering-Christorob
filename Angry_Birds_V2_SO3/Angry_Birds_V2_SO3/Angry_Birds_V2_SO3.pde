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
  line(x0, y0, x0, mouseY);
  float l1 =  dist(x0, y0, x0, mouseY);
  line(mouseX, mouseY, x0, mouseY);
  float l2 = dist(mouseX, mouseY, x0, mouseY);
 textSize(15);
 text(l1, x0, mouseY + 30); 
 text(l2, mouseX + 20, mouseY +20);
  
}

void launchBird(){

  xBird = v0 * cos(A) * t + x0;
  yBird = -0.5 * g * t * t +v0 * sin(A) * t + y0;
  t++;
}
