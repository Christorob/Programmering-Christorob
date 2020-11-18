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
float ly;
float lx;
float k = 10;
float m = 1;
float v;



boolean launched = false;

// Setup
void setup(){
  size(1200, 800);
  textSize(25);
  xBird = x0;
  yBird = y0;
}

// Draw function, 30 times per second
void draw(){
  clear();        // Så der ikke er efterladt linjer osv.
  lines();
  circle(xBird, yBird, 20);
  text("X position of bird: " + xBird + "   Y position of bird: " + yBird, 50, 100);
  world();
  angle();
    if(launched == true){ 
    }
  }

void mousePressed(){
  launched = true;
  launchBird();

}


void lines(){
  if(launched == false){
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

void angle(){        
  if(launched == false){        // Så der ikke hele tiden ændres på vinklen
   float a = mouseY - y0;
   float b = mouseX - x0;
   v = atan(a/b);
   
   text("Launch angle = " + v + "°", 50, 50);
  }
}

void launchBird(){
   if(launched == true){
    t = t + 1;
    float L = dist(mouseX,mouseY,x0,y0)/15;
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
