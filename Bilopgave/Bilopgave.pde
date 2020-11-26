Car car1;
Car car2;

//Bilopgave
void setup(){
  size(1800, 900);
  frameRate(20);
  rectMode(CENTER);

//Cars
car1 = new Car(/* x & yCarSpeed*/ 25, 25, /*x & yCar (start)*/ 10, 10, /*x & y CarSize*/ 30, 20, /*RGB*/10, 20, 30);
car2 = new Car(20, 32, 100, 20, 40, 20, 10, 100, 50);
}

void draw(){
  clear();
  background(255);
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
