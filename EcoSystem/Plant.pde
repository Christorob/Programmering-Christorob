class Plant extends WorldObject{
  float x,y,size=10;
  
  Plant(float x, float y){
    this.x = x; this.y =y;
  }
  
  void update(){
   if(frameCount%20==0)size+=0.5; 
  }
}
