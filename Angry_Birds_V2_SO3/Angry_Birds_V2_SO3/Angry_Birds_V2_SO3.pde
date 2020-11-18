float x0 = 200, y0 = 600, xBird, yBird, g = 9.82, v0, u0, A, t, ly, lx, k = 100, m = 1;
float L = dist(mouseX,mouseY,x0,y0);
float E = 0.5 * k * L * L;
float x = 10, y = 10;

boolean launched = false;
void setup(){
  size(1200, 800);
  textSize(25);
  xBird = x0;
  yBird = y0;
}

void draw(){
  clear();
  lines();
  circle(xBird, yBird, 10);
  text("X position of bird: " + xBird + "   Y position of bird: " + yBird, 50, 100);
  if(launched == false){
  angle();
  world();
    
  }
}

void mousePressed(){
  launched = true;
  launchBird();

}

void lines(){
 stroke(255);
  line(mouseX,mouseY,x0,y0);
  line(x0, y0, x0, mouseY);
    ly =  dist(x0, y0, x0, mouseY);
    
  line(mouseX, mouseY, x0, mouseY);
    lx = dist(mouseX, mouseY, x0, mouseY);
    
 textSize(15);
   text(ly, x0, mouseY - 30); 
   text(lx, mouseX + 20, mouseY +20);
  
}

void angle(){
  line(x0, y0, x0, mouseY);
    ly =  dist(x0, y0, x0, mouseY);
    
  line(mouseX, mouseY, x0, mouseY);
    lx = dist(mouseX, mouseY, x0, mouseY);
    
 textSize(15);
   text(ly, x0, mouseY - 30); 
   text(lx, mouseX + 20, mouseY +20);
  A = degrees(atan(ly/lx));
  text("Launch angle = " + A + "°", 50, 50);
}

void launchBird(){

  u0 = sqrt((2 * E) / (m * (1 + A * A )));
  v0 = A * sqrt((2 * E) / (m * (1 + A * A)));
  
   
  //xBird = (u0 * t);
  //yBird = ((-0.5 * g * t * t) + (v0 * t + y0));
  
  
   xBird = v0 * cos(A) * t + x0;
   yBird = -0.5 * g * t * t +v0 * sin(A) * t + y0;
   t = t + 0.0333333333333333333333333333333;
  
}

void world(){
  stroke(255);
hejievnoin
}
