void setup(){
  size(1000,1000);
  background(0);
  rectMode(CENTER);
  frameRate(45); 
} 
void draw(){
  clear();
  float Dark = 1;
  for (int boxX = 100; boxX <=900; boxX += 50){
    for (int boxY = 100; boxY <=900; boxY += 50){
      Dark *= 1.0075;
  float randomSize = random(40, 50), r = 20, g = 40, b = 100;
      r += random(-5, 5);
      g += random(-5, 5);
      b += random(-5, 5);
  fill((r * Dark), (g * Dark) , (b * Dark ));
  rect(boxX, boxY, randomSize, randomSize); 
   } 
 } 
}
