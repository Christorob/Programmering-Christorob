// Variable set up
float x0 = 200;
float y0 = 600; 
float xBird; 
float yBird;
float g = -9.82;
float v0;
float u0;
float A;
float t;
float k = 10;
float m = 1;
float v;
boolean launched = false;
boolean hit = false;
float L;

// Setup
void setup(){
  size(2000, 800);
  textSize(25);
  xBird = x0;
  yBird = y0;
}

// Draw function, 30 times per second
void draw(){
  clear();        // Så der ikke er efterladt linjer osv.
  lines();
  fill(255, 0, 0);
  circle(xBird, yBird, 20);
  text("X position of bird: " + xBird + "   Y position of bird: " + yBird, 50, 100);
   text("Press R to reset!", 50, 150);
  world();
  angle();
  launchBird();
  pull();
  
   if(launched==false){
  visPrikker();
  }
}


void mousePressed(){
  launched = true;
  launchBird();

}


void lines(){
  if(launched == false){
    
    float ly;
    float lx;
    
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
}

void keyPressed(){       // reset funktion
  if(key=='r'||key=='R'){
  launched = false;
  xBird = 0;
  yBird = 0;
  t = 0;
  }
}

void angle(){        
  if(launched == false){        // Så der ikke hele tiden ændres på vinklen
   float a = mouseY - y0;
   float b = mouseX - x0;
   v = atan(a/b);
   
   text("Launch angle = " + v + "°", 50, 50);
  }
}


void pull(){
if(launched == false){
    L = dist(mouseX,mouseY,x0,y0)/2;
     }
}
void launchBird(){
   if(launched == true){
     if(hit == false){
    t = t + 0.1;
     }

    float E = 0.5 * k * L * L;
      A = tan(v);
      
  u0 = sqrt( (2*E) / (m*(1+A*A)) );       //Affyringshastighed (x)
  v0 = A * (sqrt( (2*E) / (m*(1+A*A)) )); //Affyringshastighed (y)
  xBird = u0 * t + x0;
  yBird = -0.5 * g * t * t + v0 * t + y0;
     
   }
}

void world(){
  
  stroke(255);
}

void visPrikker(){
  float prikEnergy;  
  float prikAngle;  //Skuddets affyringshældning
  prikEnergy = 0.5 * 100 * L * L;
  prikAngle = tan(v);
  
  float u0P = sqrt( (2*prikEnergy) / (1*(1+prikAngle*prikAngle)) );       // x speed
  float v0P = prikAngle * (sqrt( (2*prikEnergy) / (1*(1+prikAngle*prikAngle)) )); // y speed
  float prikGravity = -9.82;
  ellipse(u0P * 4 + x0,-0.5 * prikGravity * 4 * 4 + v0P * 4 + y0,1,1);
  ellipse(u0P * 3 + x0,-0.5 * prikGravity * 3 * 3 + v0P * 3 + y0,3,3);
  ellipse(u0P * 2 + x0,-0.5 * prikGravity * 2 * 2 + v0P * 2 + y0,4,4);
  ellipse(u0P * 1 + x0,-0.5 * prikGravity * 1 * 1 + v0P * 1 + y0,5,5);

}
