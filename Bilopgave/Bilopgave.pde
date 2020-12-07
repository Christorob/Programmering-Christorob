Car car1;
Wheel wheel1;
Car car2;
Wheel wheel2;


//Bilopgave
void setup(){
  size(1800, 900);
  frameRate(20);
  rectMode(CENTER);
float t = 10;
  t += 20;
//Cars
car1 = new Car(/* x & yCarSpeed*/ 25 - sin(t), 0, /*x & yCar (start)*/ 0, 500, /*x & y CarSize*/ 60, 30, /*RGB*/200, 20, 30);
wheel1 = new Wheel(/* x & yWheelSpeed*/ 25 - sin(t), 0, /*x & yWheel (start)*/ 0, 500, /*x & y WheelSize*/ 10, 11, /*RGB*/150, 200, 200);
car2 = new Car(13 + sin(t), 0, 0, 100, 80, 35, 10, 100, 50);
wheel2 = new Wheel(13 + sin(t), 0, 0, 100, 12, 10, 200, 200, 200);
}

void draw(){
  clear();
  background(150);
  driveCars();
  drawCars();
  driveWheels();
  drawWheels();
  
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
