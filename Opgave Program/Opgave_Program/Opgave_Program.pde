// Et objekt er ligsom et eksempel på en ting. Det indeholder data, som afgør hvad det objekt er. Et eksempel på et objekt kunne være således:

Dog myDog1;
Dog myDog2; // Two objects!

void setup() {
  size(200,200);
  // Parameters go inside the parentheses when the object is constructed.
  myDog1 = new Dog(color(255,0,0),0,100,2); 
  myDog2 = new Dog(color(0,0,255),0,10,1);
}

void draw() {
  background(255);
  myDog1.drive();
  myDog1.display();
  myDog2.drive();
  myDog2.display();
}

// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class Dog { 
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // The Constructor is defined with arguments.
  Dog(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }

  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,20,10);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
