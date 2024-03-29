//Textbox klasse
class TEXTBOX {
  int X = 0, Y = 0, H = 70, W = 400;
  int TEXTSIZE = 48;
  int TextLength = 0;
  int BorderWeight = 1;

  // COLORS
  color Background = color(200, 200, 140);
  color Foreground = color(20, 0, 0);
  color BackgroundSelected = color(255, 255, 160);
  color Border = color(30, 30, 30);

  boolean BorderEnable = false;
  boolean selected = false;



  String Text = "";
  String searchText;
  String city = "";
  String displayText;






  TEXTBOX() {
  }

  TEXTBOX(int x, int y, int w, int h) {
    X = x; 
    Y = y; 
    W = w; 
    H = h;
  }

  void drawTB() {
    //Til Selected baggrund
    if (selected) {
      fill(BackgroundSelected);
    } else {
      fill(Background);
    }

    if (BorderEnable) {
      strokeWeight(BorderWeight);
      stroke(Border);
    } else {
      noStroke();
    }

    rect(X, Y, W, H);

    //Til teksten
    fill(Foreground);
    textSize(TEXTSIZE);
    text(Text, X + (textWidth("a") / 2), Y + TEXTSIZE);
  }

  //Hvis ENTER er trykket, returnerer den 1, ellers 0.

  boolean KEYPRESSED(char KEY, int KEYCODE) {
    if (selected) {
      if (KEYCODE == (int)BACKSPACE) {
        BACKSPACE();
      } else if (KEYCODE == 32) {
        // SPACE
        addText(' ');
      } else if (KEYCODE == TAB) {
        // TAB
        CLEAR();
      } else if (KEYCODE == (int)ENTER) {
        startUp();
        return true;
      } else {

        //Tjekker om inpupttet er et bogstav eller tal
        boolean isKeyCapitalLetter = (KEY >= 'A' && KEY <= 'Z');
        boolean isKeySmallLetter = (KEY >= 'a' && KEY <= 'z');
        boolean isKeyNumber = (KEY >= '0' && KEY <= '9');
        boolean isAsterisk = (KEY >= '*' && KEY <= '*');

        if (isKeyCapitalLetter || isKeySmallLetter || isKeyNumber || isAsterisk) {
          addText(KEY);
        }
      }
    }
    return false;
  }

  void addText(char text) {
    //Tjekker om teksten kan være inde i boksen
    if (textWidth(Text + text) < W) {
      Text += text;
      TextLength++;
    }
  }

  void BACKSPACE() {
    startUp();
    if (TextLength - 1 >= 0) {
      Text = Text.substring(0, TextLength - 1);
      TextLength--;
    }
  }

  void CLEAR() {
    if (TextLength > 0) {
      Text = Text.substring(0, TextLength = 0 );
      TextLength--;
      selected = false;
      startUp();
    }
  }

  //Tester om musen er over text boksen
  boolean overBox(int x, int y) {
    if (x >= X && x <= X + W) {
      if (y >= Y && y <= Y + H) {
        return true;
      }
    } 
    return false;
  }

  void PRESSED(int x, int y) {
    if (overBox(x, y)) {
      selected = true;
    } else {
      selected = false;
    }
  }

  //Search function
  void search(String input) {
    if (TextLength > 1) {

      for (String city : cityList) {
        // toLowerCase() gør at både søgningen og listen er små bogstaver, så den er case insensetive
        if (city.toLowerCase().contains(input.toLowerCase())) {

          displayText = "Found: " + city;
          text(displayText, width/3, height/2);
          println("Found: " + city);
        }
        if (input == "*") {
          displayText = "Found: " + cityList;
          text(displayText, width/3, height/2);
          println("Found: " + cityList[1]);
        }
      }
    }
  }

  void grabStringTest() {
    while (TextLength > 2) {
      println(textboxes.get(0).Text);
      println(textboxes.get(0).Text.charAt(0));
    }
  }
}

void startUp() {
  clear();
  background(120, 200, 200);
  text("Click the textbox to search. ", 50, 50);
  text("When done typing, press ENTER. ", 50, 100);
  text("Clear with TAB.", 50, 150);
  text("Delete with BACKSPACE.", 50, 200);
}


// code inspired by Mitko Nikov
