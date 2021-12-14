class Sump extends Terain{
  PImage sumpPic;

  Sump(){
    w = 150;
    h = 78;
    sumpPic = loadImage("sump.png");
  }
  
  void display(){
   // fill(100,50);
   // rect(x,y,w,h); 
    image(sumpPic,x,y);
  }
  
  void hitHandle(WorldObject o){
    if(o.x > x && o.x < x + w && o.y > y && o.y < y + h)
    o.terrainDelay();
  }
  
}
