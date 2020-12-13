class backLight{
  //data
  float xLightSpeed, yLightSpeed;
  float xLight, yLight;
  color lightColorR, lightColorG, lightColorB;
  float xLightSize, yLightSize;
  
//Constructor
  backLight(float tempXLightSpeed, float tempYLightSpeed, float tempXLight, float tempYLight, float tempXLightSize, float tempYLightSize, color tempLightColorR, color tempLightColorG, color tempLightColorB){
  xLightSpeed = tempXLightSpeed;
  yLightSpeed = tempYLightSpeed;
  lightColorR = tempLightColorR;
  lightColorG = tempLightColorG;
  lightColorB = tempLightColorB;
  xLight = tempXLight;
  yLight = tempYLight;
  xLightSize = tempXLightSize;
  yLightSize = tempYLightSize;
}
  
  void drive(){
      xLight = xLight + xLightSpeed;
      if(xLight > width){
        xLight = 0;
      }
      
      yLight = yLight + yLightSpeed;
        if(yLight > height){
          yLight = 0;
        }
  }
  
  void display(){
    //rear lights
   fill(lightColorR, lightColorG, lightColorB);
    ellipse(xLight - (5 * yLightSize), yLight + (2 * yLightSize), xLightSize, yLightSize);
    ellipse(xLight - (5 * yLightSize), yLight - (2 * yLightSize), xLightSize, yLightSize);
    //back light beams
    triangle(xLight - (5 * yLightSize), yLight + (2 * yLightSize), xLight - 100, yLight - 15 , xLight - 100, yLight + 25); 
    triangle(xLight - (5 * yLightSize), yLight - (2 * yLightSize), xLight - 100, yLight - 25 , xLight - 100, yLight + 15);
  }
}
