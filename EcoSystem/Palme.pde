class Palme extends Plant{
  
  PImage palmePic;
  
  Palme(float x, float y){
   super(x,y);
   size=100;
   palmePic = loadImage("palme.png");
  }
  
  void display(){
    image(palmePic,x,y,size,size);
    //rect(x,y,w,h); 
  }
  
}
