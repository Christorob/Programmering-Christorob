class Busk extends Plant{
  
  PImage buskPic;
  
  Busk(float x, float y){
   super(x,y);
   size=50;
   buskPic = loadImage("busk.png");
  }
  
  void display(){
    image(buskPic,x,y,size,size);
    //rect(x,y,w,h); 
  }
  
}
