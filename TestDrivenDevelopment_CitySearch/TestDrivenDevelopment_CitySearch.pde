String[] searchCity(String[] list, String text) {
  return null;
}

String[] cityList = new String[] {"Paris", "Budapest", "Skopje", "Rotterdam", "Valencia", "Vancouver", "Amsterdam", "Vienna", "Sydney", "New York City", "London", "Bangkok", "Hong Kong", "Dubai", "Rome", "Istanbul"};



ArrayList<TEXTBOX> textboxes = new ArrayList<TEXTBOX>();
boolean logged = false; // DEMO

void setup() {
  size(1000, 800);
  background(120, 200, 200);
  text("Click the textbox to search. ", 50, 50);
  text("When done typing, press ENTER. Clear with TAB.", 50, 100);
  //test1();
  //test2();

  //Konfiguration fra globale variabler
  TEXTBOX userTB = new TEXTBOX();
  userTB.X = (width/2) - userTB.W/2;
  userTB.Y = height*1/3;

  userTB.BorderWeight = 3;
  userTB.BorderEnable = true;
  textboxes.add(userTB);
}


void draw() {
  

  //for (TEXTBOX t : textboxes) {t.grabStringTest();}
  
  //Tester om søge teksten er mere eller mindre end 2 bogstaver
  test3(textboxes.get(0).Text);


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
    if (t.KEYPRESSED(key, (int)keyCode)) {
      // Search funktion kaldes
      t.search(textboxes.get(0).Text);
      t.Submit();
      
      
      
    }
  }
}
