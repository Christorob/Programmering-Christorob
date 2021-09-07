class Kat extends Animal{
  
  
PImage katPic;
  
  
  Kat(){
   
    
   katPic = loadImage("kat.png");
   w = 20;
   h = 5;
  }
  
  void display(){
    image(katPic,x,y);
    //rect(x,y,w,h); 
  }
  
}
