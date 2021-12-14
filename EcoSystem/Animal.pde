class Animal extends WorldObject{
  
  boolean delayed = false;
  
  float speedX, speedY;
  
  Animal(){
    speedX = random(-3,3)>0?3:-3;
    speedY = random(-3,3)>0?3:-3;
  }
  
  void update(){
    
      x +=delayed?speedX*0.3 : speedX;
      y +=delayed?speedY*0.3 : speedY;
      delayed = false;
      if(y<0 || y > height) speedY*=-1.0;
      
      if(x<0 || x > width) speedX*=-1.0;
  }
  
  void terrainDelay(){
     delayed = true;
  }
  
}
