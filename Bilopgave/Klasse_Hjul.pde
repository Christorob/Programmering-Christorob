class Wheel{
  //data
  float xWheelSpeed, yWheelSpeed;
  float xWheel, yWheel;
  color wheelColorR, wheelColorG, wheelColorB;
  float xWheelSize, yWheelSize;
  
//Constructor
  Wheel(float tempXWheelSpeed, float tempYWheelSpeed, float tempXWheel, float tempYWheel, float tempXWheelSize, float tempYWheelSize, color tempWheelColorR, color tempWheelColorG, color tempWheelColorB){
  xWheelSpeed = tempXWheelSpeed;
  yWheelSpeed = tempYWheelSpeed;
   wheelColorR = tempWheelColorR;
   wheelColorG = tempWheelColorG;
   wheelColorB = tempWheelColorB;
  xWheel = tempXWheel;
  yWheel = tempYWheel;
  xWheelSize = tempXWheelSize;
  yWheelSize = tempYWheelSize;
}
  
  void drive(){
      xWheel = xWheel + xWheelSpeed;
      if(xWheel > width){
        xWheel = 0;
      }
      
      yWheel = yWheel + yWheelSpeed;
        if(yWheel > height){
          yWheel = 0;
        }
  }
  
  void display(){
    fill(wheelColorR, wheelColorG, wheelColorB);
    ellipse(xWheel + (2 * xWheelSize), yWheel + (1.6 * yWheelSize), xWheelSize, yWheelSize);
    ellipse(xWheel + (2 * xWheelSize), yWheel - (1.6 * yWheelSize), xWheelSize, yWheelSize);
    ellipse(xWheel - (2 * xWheelSize), yWheel + (1.6 * yWheelSize), xWheelSize, yWheelSize);
    ellipse(xWheel - (2 * xWheelSize), yWheel - (1.6 * yWheelSize), xWheelSize, yWheelSize);
  }
  

}
