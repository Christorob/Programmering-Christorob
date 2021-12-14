PVector location = new PVector(1000, 0);
PVector velocity = new PVector();
PVector gravity = new PVector(0, 0.1);
PVector wind = new PVector (random(-5, 5), 0);

void setup() {
  size(2000, 1000);
}

void draw() {
  clear();
  rect(0, 800, 2000, 1000);
  ellipse(location.x, location.y, 100, 100);

  location.add(velocity);
  velocity.add(gravity);
  location.add(wind);
  if (location.y > 750) {
    velocity.mult(-0.75);
  }
}
