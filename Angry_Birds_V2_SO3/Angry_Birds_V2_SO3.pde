// Variable set up
float x0 = 300;
float y0 = 650; 
float xBird = x0; 
float yBird = y0;
float g = -9.82;
float v0;
float u0;
float A;
float t;
float k = 100;
float m = 10;
float v;
float L;
boolean launched = false;
boolean hit = false;
boolean gameStart = false;

// Setup
void setup(){
  size(2000, 800);
  background(255,50,50);
  textSize(100);
  text("WELCOME TO ANGRY BIRDS!", 200, 500);
  text("Press Space to begin!", 200, 600);
}

// Draw function, 30 times per second
void draw(){
  if(gameStart == true){
  textSize(20);
  clear();        // Så der ikke er efterladt linjer osv.
  background(50,150,255);
    text("X position of bird: " + xBird + "   Y position of bird: " + yBird, 50, 100); // text som viser koordinater og hjælp
    text("Press R to reset!", 50, 150);
  lines();
  
  //Draws Bird:
  //Body:
  fill(255, 0, 0);
  stroke(100);
  ellipse(xBird -22, yBird - 5, 25, 8);
  ellipse(xBird -20, yBird + 3, 20, 12);
  circle(xBird, yBird, 40);
  
  //Beak:
  fill(255,255,0);
  stroke(100);
  triangle((xBird + 12), (yBird + 15), (xBird + 12), (yBird -15), (xBird + 35), (yBird));
  line(xBird + 12, yBird+4, xBird +35, yBird);
  
  //Eye:
  fill(255);
  stroke(100);
  circle(xBird + 10, yBird - 10, 10);
  fill(0);
  circle(xBird + 12, yBird - 10, 3);
  
  //Eyebrows:
  fill(0);
  stroke(50);
  triangle((xBird + 10), (yBird - 20), (xBird - 10), (yBird - 15), (xBird+17 ), (yBird-10));

  
  //returnerer settings for farver til normalt:
  fill(255);
  stroke(255);
//funktioner som er kaldt i draw
  world();
  angle();
  launchBird();
  pull();
   if(launched==false){
    visPrikker();
  }
 }
}

//Tjekker om musen er trykket, og starter kastet hvis den er
void mousePressed(){
  if(gameStart == true){
  launched = true;
  launchBird();
  }
}
// tegner linjerne i slangebøssen
void lines(){
  if(gameStart == true){
  if(launched == false){  
 stroke(255);
  line(mouseX,mouseY,x0,y0);
  line(x0, y0, x0, mouseY);
   float ly =  dist(x0, y0, x0, mouseY);
    
  line(mouseX, mouseY, x0, mouseY);
   float lx = dist(mouseX, mouseY, x0, mouseY);
    
 textSize(15);
   text(ly, x0, mouseY - 30); 
   text(lx, mouseX + 20, mouseY +20);
  }
 }
}

//reset funktionen
void keyPressed(){       
  //Start funktion
  if(key==' '){
    gameStart = true;
  }
  // Reset funktion
 if(key=='r'||key=='R'){
 reset();
  }
}

void reset(){
  if(gameStart == true){
  text("The game has been reset!", 50, 200);
  launched = false;
  xBird = x0;
  yBird = y0;
  t = 0;
  }
}

//Beregner vinklen
void angle(){     
  if(gameStart == true){
  if(launched == false){        // Så der ikke hele tiden ændres på vinklen
   float a = mouseY - y0;
   float b = mouseX - x0;
   v = atan(a/b);
   A = tan(v);
   text("Launch angle = " + degrees(-v) + "°", 50, 50);
  }
 }
}

//Beregner længden som slangebøssen er trukket tilbage med
void pull(){
if(gameStart == true){
if(launched == false){
    L = dist(mouseX,mouseY,x0,y0)/2;
    }
  }
}

//Skyder fuglen
void launchBird(){     // får tid til kun at gå op hvis fuglen er blevet skudt, men ikke har ramt gulvet endnu
if(gameStart == true){
   if(launched == true){
     if(hit == false){
     if(yBird < 760){
     t = t + 0.075;
     }else{ reset();
   }
  }
  
//fjeder energien beregnes
  float E = 0.5 * k * L * L;
//u0 og v0 beregnes, baseret på E, m og A.
  u0 = sqrt( (2 * E) / (m * (1 + A * A)));       //Affyringshastighed (x)
  v0 = A * (sqrt( (2 * E) / (m * (1 + A * A)))); //Affyringshastighed (y)
//x og y koordinater beregnes
  xBird = u0 * t + x0;
  yBird = -0.5 * g * t * t + v0 * t + y0;
  }  
 }
}

//ikke færdig funktion:
//Vil skabe en bane som så kan rammes af fuglen, og måske have ting som kan ødelægges.
void world(){
 // curve(0, 760, 300, 700, 500, 600, 700, 250);
  stroke(255);
}
//Prikker funktion, med stort tak til Daniel for hjælpen
void visPrikker(){
  float prikEnergy;  
  float prikAngle;  //Skuddets affyringshældning
  prikEnergy = 0.5 * 100 * L * L;
  prikAngle = tan(v);
  
  float u0Prik = sqrt( (2 * prikEnergy) / (1 * (1 + prikAngle * prikAngle)) );       // x speed
  float v0Prik = prikAngle * (sqrt( (2 * prikEnergy) / ( 1* (1 + prikAngle * prikAngle)) )); // y speed
  float prikGravity = 10*-9.82;
  circle(u0Prik * 8 + x0,-0.5 * prikGravity * 8 * 8 + v0Prik * 8 + y0,1);
  circle(u0Prik * 7.5 + x0,-0.5 * prikGravity * 7.5 * 7.5 + v0Prik * 7.5 + y0,1.5);
  circle(u0Prik * 7 + x0,-0.5 * prikGravity * 7 * 7 + v0Prik * 7 + y0,2);
  circle(u0Prik * 6.5 + x0,-0.5 * prikGravity * 6.5 * 6.5 + v0Prik * 6.5 + y0,2.5);
  circle(u0Prik * 6 + x0,-0.5 * prikGravity * 6 * 6 + v0Prik * 6 + y0,3);
  circle(u0Prik * 5.5 + x0,-0.5 * prikGravity * 5.5 * 5.5 + v0Prik * 5.5 + y0,3.5);
  circle(u0Prik * 5 + x0,-0.5 * prikGravity * 5 * 5 + v0Prik * 5 + y0,4);
  circle(u0Prik * 4.5 + x0,-0.5 * prikGravity * 4.5 * 4.5 + v0Prik * 4.5 + y0,4.5);
  circle(u0Prik * 4 + x0,-0.5 * prikGravity * 4 * 4 + v0Prik * 4 + y0,5);
  circle(u0Prik * 3.5 + x0,-0.5 * prikGravity * 3.5 * 3.5 + v0Prik * 3.5 + y0,5.5);
  circle(u0Prik * 3 + x0,-0.5 * prikGravity * 3 * 3 + v0Prik * 3 + y0,6);
  circle(u0Prik * 2.5 + x0,-0.5 * prikGravity * 2.5 * 2.5 + v0Prik * 2.5 + y0,6.5);
  circle(u0Prik * 2 + x0,-0.5 * prikGravity * 2 * 2 + v0Prik * 2 + y0,7);
  circle(u0Prik * 1.5 + x0,-0.5 * prikGravity * 1.5 * 1.5 + v0Prik * 1.5 + y0,7.5);
  circle(u0Prik * 1 + x0,-0.5 * prikGravity * 1 * 1 + v0Prik * 1 + y0,8);
  circle(u0Prik * 0.5 + x0,-0.5 * prikGravity * 0.5 * 0.5 + v0Prik * 0.5 + y0,8.5);

}
