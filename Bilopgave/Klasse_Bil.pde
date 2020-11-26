class Car{
//data
float xCarSpeed;
float yCarSpeed;
float xCar;
float yCar;
color carColor;

//Constructor
Car(float tempXCarSpeed, float tempYCarSpeed, float tempCarColor){
tempXCarSpeed = xCarSpeed;
tempYCarSpeed = yCarSpeed;
tempCarColor = carColor;
}

void drive(){
xCar = xCar + xCarSpeed;
//yCar = yCar * yCarSpeed;
}

void display(){
fill(carColor);
rect(xCar, yCar, 60, 30);
}


}
