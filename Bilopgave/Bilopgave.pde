Car car1;

//Var setup
float xCar;
float yCar;
float xCarSpeed;
float yCarSpeed;

//Bilopgave
void setup(){
size(1800, 900);
frameRate(60);
background(0);
rectMode(CENTER);

//Cars
  car1 = new Car(100, 800, 100); // xspeed, yspeed, color
}

void draw(){
 clear();
  driveCars();
  drawCars();
}

void driveCars(){
 car1.drive();
}

void drawCars(){
 car1.display();  
}
