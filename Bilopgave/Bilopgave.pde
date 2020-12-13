Car car1;
Wheel wheel1;
Light light1;
Car car2;
Wheel wheel2;
Light light2;


//Bilopgave
void setup(){
  size(1800, 900);
  frameRate(50);
  rectMode(CENTER);
float t = 10;
  t += 20;
//Cars
car1 = new Car(/* x & yCarSpeed*/ 5 - sin(t), 0, /*x & yCar (start)*/ 0, 500, /*x & y CarSize*/ 60, 30, /*RGB*/200, 20, 30);

wheel1 = new Wheel(/* x & yWheelSpeed*/ 5 - sin(t), 0, /*x & yWheel (start)*/ 0, 500, /*x & y WheelSize*/ 10, 11, /*RGB*/150, 200, 200);

light1 = new Light(/* x & yLightSpeed*/ 5 - sin(t), 0, /*x & yLight (start)*/ 0, 500, /*x & y LightSize*/ 8, 6, /*RGB*/255, 255, 20);



car2 = new Car(3 + sin(t), 0, 0, 100, 80, 35, 10, 100, 50);

wheel2 = new Wheel(3 + sin(t), 0, 0, 100, 12, 10, 200, 200, 200);

light2 = new Light(3 + sin(t), 0, 0, 100, 12, 10, 200, 200, 200);

}

void draw(){
  clear();
  background(150);
  driveCars();
  drawCars();
  driveWheels();
  drawWheels();
  driveLights();
  drawLights();
  
}

void driveWheels(){
 wheel1.drive();
 wheel2.drive();
}

void drawWheels(){
 wheel1.display();  
 wheel2.display();
}

void driveCars(){
 car1.drive();
 car2.drive();
}

void drawCars(){
 car1.display();  
 car2.display();
}

void driveLights(){
 light1.drive();
 light2.drive();
}

void drawLights(){
 light1.display();
 light2.display();
}
