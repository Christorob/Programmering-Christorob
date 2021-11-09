String[] searchCity(String[] list, String text) {
  return null;
}

String[] cityList = new String[] {"Paris", "Budapest", "Skopje", "Rotterdam", "Valencia", "Vancouver", "Amsterdam", "Vienna", "Sydney", "New York City", "London", "Bangkok", "Hong Kong", "Dubai", "Rome", "Istanbul"};



ArrayList<TEXTBOX> textboxes = new ArrayList<TEXTBOX>();
boolean logged = false; // DEMO

void setup() {
  size(400, 250);


  //Konfiguration fra globale variabler
  TEXTBOX userTB = new TEXTBOX();
  userTB.X = 100;
  userTB.Y = height*2/3;
  userTB.W = 200;
  userTB.H = 40;
  userTB.BorderWeight = 3;
  userTB.BorderEnable = true;
  textboxes.add(userTB);
}


void draw() {
  background(120, 200, 200);


  //Tegner tekstbokse
  for (TEXTBOX t : textboxes) {
    t.drawTB();
  }
}

void mousePressed() {
  for (TEXTBOX t : textboxes) {
    t.PRESSED(mouseX, mouseY);
  }
}

// JUST FOR DEMO
void Submit() {
  if (textboxes.get(0).Text.equals("mitkonikov")) {
  }
}

void keyPressed() {
  for (TEXTBOX t : textboxes) {
    if (t.KEYPRESSED(key, (int)keyCode)) {
      Submit();
    }
  }
}
