Car car1;
Wheel wheel1;
Light light1;
backLight backLight1;

Car car2;
Wheel wheel2;
Light light2;
backLight backLight2;

Car car3;
Wheel wheel3;
Light light3;
backLight backLight3;

Car car4;
Wheel wheel4;
Light light4;
backLight backLight4;

//Bilopgave
void setup() {
  size(1800, 900);
  frameRate(50);
  rectMode(CENTER);
  float t = 10;
  t += 20;
  //Cars
  car1 = new Car(/* x & yCarSpeed*/ 5 - sin(t), 0, /*x & yCar (start)*/ 0, 500, /*x & y CarSize*/ 60, 30, /*RGB*/200, 20, 30);

  wheel1 = new Wheel(/* x & yWheelSpeed*/ 5 - sin(t), 0, /*x & yWheel (start)*/ 0, 500, /*x & y WheelSize*/ 10, 11, /*RGB*/150, 200, 200);

  light1 = new Light(/* x & yLightSpeed*/ 5 - sin(t), 0, /*x & yLight (start)*/ 0, 500, /*x & y LightSize*/ 8, 6, /*RGB*/255, 255, 20);

  backLight1 = new backLight(/* x & yLightSpeed*/ 5 - sin(t), 0, /*x & yLight (start)*/ 0, 500, /*x & y LightSize*/ 8, 6, /*RGB*/255, 0, 20);


  car2 = new Car(/* x & yCarSpeed*/ 3 + sin(t), 0, /*x & yCar (start)*/ 0, 100, /*x & y CarSize*/ 80, 35, /*RGB*/ 10, 100, 50);

  wheel2 = new Wheel(/* x & yWheelSpeed*/ 3 + sin(t), 0, /*x & yWheel (start)*/ 0, 100, /*x & y WheelSize*/ 13, 12, /*RGB*/ 200, 200, 200);

  light2 = new Light(/* x & yLightSpeed*/ 3 + sin(t), 0, /*x & yWheel (start)*/ 0, 100, /*x & y LightSize*/ 10, 8, /*RGB*/ 250, 250, 150);

  backLight2 = new backLight(/* x & yLightSpeed*/ 3 + sin(t), 0, /*x & yWheel (start)*/ 0, 100, /*x & y LightSize*/ 10, 8, /*RGB*/ 250, 50, 70);
  
  
  car3 = new Car(/* x & yCarSpeed*/ 1 - (3 * tan(t)), 0, /*x & yCar (start)*/ 0, 300, /*x & y CarSize*/ 80, 40, /*RGB*/100, 20, 200);

  wheel3 = new Wheel(/* x & yWheelSpeed*/ 1 - (3 * tan(t)), 0, /*x & yWheel (start)*/ 0, 300, /*x & y WheelSize*/ 16, 13, /*RGB*/150, 200, 200);

  light3 = new Light(/* x & yLightSpeed*/ 1 - (3 * tan(t)), 0, /*x & yLight (start)*/ 0, 300, /*x & y LightSize*/ 10, 6, /*RGB*/255, 255, 20);

  backLight3 = new backLight(/* x & yLightSpeed*/ 1 - (3 * tan(t)), 0, /*x & yLight (start)*/ 0, 300, /*x & y LightSize*/ 10, 3, /*RGB*/200, 150, 20);
  
  
  car4 = new Car(/* x & yCarSpeed*/ 6 - (2 * sin(t)), 0, /*x & yCar (start)*/ 0, 700, /*x & y CarSize*/ 90, 50, /*RGB*/ 10, 120, 250);

  wheel4 = new Wheel(/* x & yWheelSpeed*/ 6 - (2 * sin(t)), 0, /*x & yWheel (start)*/ 0, 700, /*x & y WheelSize*/ 20, 18, /*RGB*/150, 200, 200);

  light4 = new Light(/* x & yLightSpeed*/ 6 - (2 * sin(t)), 0, /*x & yLight (start)*/ 0, 700, /*x & y LightSize*/ 15, 9, /*RGB*/200, 255, 200);
  
  backLight4 = new backLight(/* x & yLightSpeed*/ 6 - (2 * sin(t)), 0, /*x & yLight (start)*/ 0, 700, /*x & y LightSize*/ 10, 8, /*RGB*/205, 60, 20);


}

void draw() {
  clear();
  background(0);
  driveCars();
  drawCars();
  driveWheels();
  drawWheels();
  driveLights();
  drawLights();
  driveBackLights();
  drawBackLights();
}

void driveWheels() {
  wheel1.drive();
  wheel2.drive();
  wheel3.drive();
  wheel4.drive();
}

void drawWheels() {
  wheel1.display();  
  wheel2.display();
  wheel3.display();  
  wheel4.display();
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

void driveLights() {
  light1.drive();
  light2.drive();
  light3.drive();
  light4.drive();
}

void drawLights() {
  light1.display();
  light2.display();
  light3.display();
  light4.display();
}

void driveBackLights() {
  backLight1.drive();
  backLight2.drive();
  backLight3.drive();
  backLight4.drive();
}

void drawBackLights() {
  backLight1.display();
  backLight2.display();
  backLight3.display();
  backLight4.display();
}
