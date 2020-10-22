int sizeX = 1920;
int sizeY = 1080;
float rotation = 0.1;
float oscillate = 0;  
float bg = 1;

void settings(){
  fullScreen();
  size(sizeX, sizeY, P3D);
 
}

void draw(){
  clear();
  
  background(bg);
  for(float bg = 1; bg >= 255; bg *= 1.01);
  
  translate(sizeX/2, sizeY/2, 0);
  noStroke();
  
 rotateX(rotation);
 rotateY(rotation);
  
  for(int x = -2; x < 3; x++){
    for(int y = -2; y < 3; y++){
      for(int z = -2; z < 3; z++){
        
        translate(x*60*(sin(oscillate)+2), y*60*(sin(oscillate)+2), z*60*(sin(oscillate)+2));
        
        fill((y+2)*51, (x+2)*51, (z+2)*51);
        
        box(50 + random(-5, 5));
        
        translate(x*60*(sin(oscillate)+2)*-1, y*60*(sin(oscillate)+2)*-1, z*60*(sin(oscillate)+2)*-1);
      }
    }
  }
  
  directionalLight(255, 255, 255, 0, 0, 1);

  rotation += 0.01;
  oscillate += 0.02;
}
