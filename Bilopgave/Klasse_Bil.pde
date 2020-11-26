class Car{
  //data
  float xCarSpeed, yCarSpeed;
  float xCar, yCar;
  color carColorR, carColorG, carColorB;
  float xCarSize, yCarSize;
  
//Constructor
  Car(float tempXCarSpeed, float tempYCarSpeed, float tempXCar, float tempYCar, float tempXCarSize, float tempYCarSize, color tempCarColorR, color tempCarColorG, color tempCarColorB){
  xCarSpeed = tempXCarSpeed;
  yCarSpeed = tempYCarSpeed;
   carColorR = tempCarColorR;
   carColorG = tempCarColorG;
   carColorB = tempCarColorB;
  xCar = tempXCar;
  yCar = tempYCar;
  xCarSize = tempXCarSize;
  yCarSize = tempYCarSize;
}
  
  void drive(){
      xCar = xCar + xCarSpeed;
      if(xCar > width){
        xCar = 0;
      }
      
      yCar = yCar + yCarSpeed;
        if(yCar > height){
          yCar = 0;
        }
  }
  
  void display(){
    fill(carColorR, carColorG, carColorB);
    rect(xCar, yCar, xCarSize, yCarSize);
  }
  

}
