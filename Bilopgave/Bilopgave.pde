Car car1;
Car car2;

//Bilopgave
void setup(){
  size(1800, 900);
  frameRate(20);
  rectMode(CENTER);

//Cars
car1 = new Car(/* x & yCarSpeed*/ 25, 10, /*x & yCar (start)*/ 0, 500, /*x & y CarSize*/ 60, 30, /*RGB*/200, 20, 30);
car2 = new Car(20, 3, 0, 100, 80, 35, 10, 100, 50);
}

void draw(){
  clear();
  background(150);
  driveCars();
  drawCars();
}

void driveCars(){
 car1.drive();
 car2.drive();
}

void drawCars(){
 car1.display();  
 car2.display();
}
