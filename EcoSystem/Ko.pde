class Ko extends Animal{
  
  PImage koPic;
  
  Ko(){
   koPic = loadImage("cow2.png");
   w = 20;
   h = 5;
  }
  
  void display(){
    image(koPic,x,y);
    //rect(x,y,w,h); 
  }
  
}
