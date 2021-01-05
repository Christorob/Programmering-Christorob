class Car{
  //data
  //chassis
  float xCarSpeed, yCarSpeed;
  float xCar, yCar;
  color carColorR, carColorG, carColorB;
  float xCarSize, yCarSize;
  //wheel
  float xWheelSpeed, yWheelSpeed;
  float xWheel, yWheel;
  color wheelColorR, wheelColorG, wheelColorB;
  float xWheelSize, yWheelSize;
  //light
  float xLightSpeed, yLightSpeed;
  float xLight, yLight;
  color lightColorR, lightColorG, lightColorB;
  float xLightSize, yLightSize;
  //backlight
  float xBackLightSpeed, yBackLightSpeed;
  float xBackLight, yBackLight;
  color backLightColorR, backLightColorG, backLightColorB;
  float xBackLightSize, yBackLightSize;
//Constructor
  Car(float tempXCarSpeed, float tempYCarSpeed, float tempXCar, float tempYCar, float tempXCarSize, float tempYCarSize, color tempCarColorR, color tempCarColorG, color tempCarColorB, float tempXWheelSpeed, float tempYWheelSpeed, float tempXWheel, float tempYWheel, float tempXWheelSize, float tempYWheelSize, color tempWheelColorR, color tempWheelColorG, color tempWheelColorB, float tempXLightSpeed, float tempYLightSpeed, float tempXLight, float tempYLight, float tempXLightSize, float tempYLightSize, color tempLightColorR, color tempLightColorG, color tempLightColorB, float tempXBackLightSpeed, float tempYBackLightSpeed, float tempXBackLight, float tempYBackLight, float tempXBackLightSize, float tempYBackLightSize, color tempBackLightColorR, color tempBackLightColorG, color tempBackLightColorB){
 
  xCarSpeed = tempXCarSpeed;
  yCarSpeed = tempYCarSpeed;
  carColorR = tempCarColorR;
  carColorG = tempCarColorG;
  carColorB = tempCarColorB;
  xCar = tempXCar;
  yCar = tempYCar;
  xCarSize = tempXCarSize;
  yCarSize = tempYCarSize;
  
  xWheelSpeed = tempXWheelSpeed;
  yWheelSpeed = tempYWheelSpeed;
  wheelColorR = tempWheelColorR;
  wheelColorG = tempWheelColorG;
  wheelColorB = tempWheelColorB;
  xWheel = tempXWheel;
  yWheel = tempYWheel;
  xWheelSize = tempXWheelSize;
  yWheelSize = tempYWheelSize;
  
  xLightSpeed = tempXLightSpeed;
  yLightSpeed = tempYLightSpeed;
  lightColorR = tempLightColorR;
  lightColorG = tempLightColorG;
  lightColorB = tempLightColorB;
  xLight = tempXLight;
  yLight = tempYLight;
  xLightSize = tempXLightSize;
  yLightSize = tempYLightSize;
  
  xBackLightSpeed = tempXBackLightSpeed;
  yBackLightSpeed = tempYBackLightSpeed;
  backLightColorR = tempBackLightColorR;
  backLightColorG = tempBackLightColorG;
  backLightColorB = tempBackLightColorB;
  xBackLight = tempXBackLight;
  yBackLight = tempYBackLight;
  xBackLightSize = tempXBackLightSize;
  yBackLightSize = tempYBackLightSize;
}
  
  void drive(){
      xCar = xCar + xCarSpeed;
      if(xCar > width){
        xCar = 0;
      }
      
      yCar = yCar + yCarSpeed;
        if(yCar > height){
          yCar = 0;
          xCar = 0;
        }
        
      xWheel = xWheel + xWheelSpeed;
      if(xWheel > width){
        xWheel = 0;
      }
      
      yWheel = yWheel + yWheelSpeed;
        if(yWheel > height){
          yWheel = 0;
          xWheel = 0;
        }
        
        
        xLight = xLight + xLightSpeed;
      if(xLight > width){
        xLight = 0;
      }
      
      yLight = yLight + yLightSpeed;
        if(yLight > height){
          yLight = 0;
          xLight = 0;
        }
        
        
        xBackLight = xBackLight + xBackLightSpeed;
      if(xBackLight > width){
        xBackLight = 0;
      }
      
      yBackLight = yBackLight + yBackLightSpeed;
        if(yBackLight > height){
          yBackLight = 0;
          xBackLight = 0;
        }
  }
  
  void display(){
    fill(carColorR, carColorG, carColorB);
    rect(xCar, yCar, xCarSize, yCarSize);
    
    fill(wheelColorR, wheelColorG, wheelColorB);
    ellipse(xWheel + (2 * xWheelSize), yWheel + (1.6 * yWheelSize), xWheelSize, yWheelSize);
    ellipse(xWheel + (2 * xWheelSize), yWheel - (1.6 * yWheelSize), xWheelSize, yWheelSize);
    ellipse(xWheel - (2 * xWheelSize), yWheel + (1.6 * yWheelSize), xWheelSize, yWheelSize);
    ellipse(xWheel - (2 * xWheelSize), yWheel - (1.6 * yWheelSize), xWheelSize, yWheelSize);
    
    
    //lights
    fill(lightColorR, lightColorG, lightColorB);
    ellipse(xLight + (5 * yLightSize), yLight + (2 * yLightSize), xLightSize, yLightSize);
    ellipse(xLight + (5 * yLightSize), yLight - (2 * yLightSize), xLightSize, yLightSize);
    //front light beams
    triangle(xLight + (5 * yLightSize), yLight + (2 * yLightSize), 1.25 * xLight + 30, yLight - 10 , 1.25 * xLight + 30, yLight +30); 
    triangle(xLight + (5 * yLightSize), yLight - (2 * yLightSize), 1.25 * xLight + 30, yLight - 30 , 1.25 * xLight + 30, yLight +10);
    
    fill(backLightColorR, backLightColorG, backLightColorB);
    ellipse(xBackLight - (5 * yBackLightSize), yBackLight + (2 * yBackLightSize), xBackLightSize, yBackLightSize);
    ellipse(xBackLight - (5 * yBackLightSize), yBackLight - (2 * yBackLightSize), xBackLightSize, yBackLightSize);
    //back light beams
    triangle(xBackLight - (5 * yBackLightSize), yBackLight + (2 * yBackLightSize), xBackLight - 100, yBackLight - 15 , xBackLight - 100, yBackLight + 25); 
    triangle(xBackLight - (5 * yBackLightSize), yBackLight - (2 * yBackLightSize), xBackLight - 100, yBackLight - 25 , xBackLight - 100, yBackLight + 15);
  }
  

}
