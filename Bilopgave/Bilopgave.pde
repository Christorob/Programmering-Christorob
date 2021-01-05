Car car1;
Car car2;
Car car3;
Car car4;
//Bilopgave
void setup() {
  size(1800, 900);
  frameRate(50);
  rectMode(CENTER);
  float t = 10;
  t += 20;
  //Cars
  car1 = new Car(/* x & yCarSpeed*/ 3 , 0, /*x & yCar (start)*/ 0, 500, /*x & y CarSize*/ 60, 30, /*RGB*/200, 20, 30, /* x & yWheelSpeed*/ 3 , 0, /*x & yWheel (start)*/ 0, 500, /*x & y WheelSize*/ 10, 11, /*RGB*/150, 200, 200, /* x & yLightSpeed*/ 3 , 0, /*x & yLight (start)*/ 0, 500, /*x & y LightSize*/ 8, 6, /*RGB*/255, 255, 20, /* x & yLightSpeed*/ 3 , 0, /*x & yLight (start)*/ 0, 500, /*x & y LightSize*/ 8, 6, /*RGB*/255, 0, 20);


  car2 = new Car(/* x & yCarSpeed*/ 1 , 0, /*x & yCar (start)*/ 0, 100, /*x & y CarSize*/ 80, 35, /*RGB*/ 10, 100, 50, /* x & yWheelSpeed*/ 1 , 0, /*x & yWheel (start)*/ 0, 100, /*x & y WheelSize*/ 13, 12, /*RGB*/ 200, 200, 200, /* x & yLightSpeed*/ 1 , 0, /*x & yWheel (start)*/ 0, 100, /*x & y LightSize*/ 10, 8, /*RGB*/ 250, 250, 150, /* x & yLightSpeed*/ 1 , 0, /*x & yWheel (start)*/ 0, 100, /*x & y LightSize*/ 10, 8, /*RGB*/ 250, 50, 70);


  car3 = new Car(/* x & yCarSpeed*/ 2 , 0, /*x & yCar (start)*/ 0, 300, /*x & y CarSize*/ 80, 40, /*RGB*/100, 20, 200, /* x & yWheelSpeed*/ 2 , 0, /*x & yWheel (start)*/ 0, 300, /*x & y WheelSize*/ 16, 13, /*RGB*/150, 200, 200, /* x & yLightSpeed*/ 2 , 0, /*x & yLight (start)*/ 0, 300, /*x & y LightSize*/ 10, 6, /*RGB*/255, 255, 20, /* x & yLightSpeed*/ 2 , 0, /*x & yLight (start)*/ 0, 300, /*x & y LightSize*/ 10, 3, /*RGB*/200, 150, 20);


  car4 = new Car(/* x & yCarSpeed*/ 4 , 0, /*x & yCar (start)*/ 0, 700, /*x & y CarSize*/ 90, 50, /*RGB*/ 10, 120, 250, /* x & yWheelSpeed*/ 4 , 0, /*x & yWheel (start)*/ 0, 700, /*x & y WheelSize*/ 20, 18, /*RGB*/150, 200, 200, /* x & yLightSpeed*/ 4 , 0, /*x & yLight (start)*/ 0, 700, /*x & y LightSize*/ 15, 9, /*RGB*/200, 255, 200, /* x & yLightSpeed*/ 4 , 0, /*x & yLight (start)*/ 0, 700, /*x & y LightSize*/ 10, 8, /*RGB*/205, 60, 20);
}
void draw() {
  clear();
  background(0);
  driveCars();
  drawCars();
}
void driveCars() {
  car1.drive();
  car2.drive();
  car3.drive();
  car4.drive();
}
void drawCars() {
  car1.display();  
  car2.display();
  car3.display();  
  car4.display();
}
