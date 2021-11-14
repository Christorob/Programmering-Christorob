String[] cityList = new String[] {"Paris", "Budapest", "Skopje", "Rotterdam", "Valencia", "Vancouver", "Amsterdam", "Vienna", "Sydney", "New York City", "London", "Bangkok", "Hong Kong", "Dubai", "Rome", "Istanbul"};

ArrayList<TEXTBOX> textboxes = new ArrayList<TEXTBOX>();

void setup() {
  size(1000, 800);
  background(120, 200, 200);
  text("Click the textbox to search. ", 50, 50);
  text("When done typing, press ENTER. ", 50, 100);
  text("Clear with TAB.", 50, 150);
  //test1();
  //test2();

  //Konfiguration fra globale variabler
  TEXTBOX inputTB = new TEXTBOX();
  inputTB.X = (width/2) - inputTB.W/2;
  inputTB.Y = height*1/3;

  inputTB.BorderWeight = 3;
  inputTB.BorderEnable = true;
  textboxes.add(inputTB);
}


void draw() {

  //Test for getting the string
  //for (TEXTBOX t : textboxes) {t.grabStringTest();}

  //Tester om søge teksten er mere eller mindre end 2 bogstaver
  //test3(textboxes.get(0).Text);


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



void keyPressed() {
  for (TEXTBOX t : textboxes) {
    // Keycode detektion
    if (t.KEYPRESSED(key, (int)keyCode)) {
      
      // Search funktion kaldes
      t.search(textboxes.get(0).Text);

    }
  }
}
