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


//Cars
Car car1 = new Car(100, 100, 100);

}


void draw(){
  drive();
}

void drive(){

float xCar = xCar + xCarSpeed;
float yCar = yCar + yCarSpeed;
}
