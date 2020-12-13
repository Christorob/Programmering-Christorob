class Light{
  //data
  float xLightSpeed, yLightSpeed;
  float xLight, yLight;
  color lightColorR, lightColorG, lightColorB;
  float xLightSize, yLightSize;
  
//Constructor
  Light(float tempXLightSpeed, float tempYLightSpeed, float tempXLight, float tempYLight, float tempXLightSize, float tempYLightSize, color tempLightColorR, color tempLightColorG, color tempLightColorB){
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
    fill(lightColorR, lightColorG, lightColorB);
    ellipse(xLight + (2 * xLightSize), yLight + (1.6 * yLightSize), xLightSize, yLightSize);
    ellipse(xLight + (2 * xLightSize), yLight - (1.6 * yLightSize), xLightSize, yLightSize);
    ellipse(xLight - (2 * xLightSize), yLight + (1.6 * yLightSize), xLightSize, yLightSize);
    ellipse(xLight - (2 * xLightSize), yLight - (1.6 * yLightSize), xLightSize, yLightSize);
  }
  

}
