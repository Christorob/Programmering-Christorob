// Et objekt er ligsom et eksempel på en ting. Det indeholder data, som afgør hvad det objekt er. Et eksempel på et objekt kunne være således:

Dog myDog1;
Dog myDog2; 

void setup() {
  size(1000,1000);

  // Parametre inde i constructor
  myDog1 = new Dog(color(200,100,0),10,100,2, 100, 20); 
  myDog2 = new Dog(color(250,250,255),0,500,1, 80, 25);
}

void draw() {
  background(100, 100, 150);
  myDog1.drive();
  myDog1.display();
  myDog2.drive();
  myDog2.display();
}

// Classe set up
// 1 'form' er brugt
class Dog { 
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float xSize;
  float ySize;

  // Constructor med data 
  Dog(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempXsize, float tempYsize) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    xSize = tempXsize;
    ySize = tempYsize;
  }
  

  void display() {
    stroke(100);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,xSize,ySize);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
