World w = new World(); 
String visTekst = "";

void setup() {
  size(700, 700);
}

// Kører en gang per frame

void draw() {
  clear();
  w.displayAndUpdate();
  fill(255);
  textSize(20);
  text(visTekst,20,20);
}

// Detekterer når en tast er trykket, og udfører så koden under

void keyPressed() {
  switch(key) {
  case 's':
    visTekst = "'s' trykket, derfor laves en Plante af typen SUMP på (" + mouseX + ", " + mouseY+")";
    w.createSump(mouseX, mouseY);
    break;   
  case 'p':
    visTekst = "'p' trykket, derfor laves en Plante af typen PALME på (" + mouseX + ", " + mouseY+")";
    w.createPalme(mouseX, mouseY);
    break;    
  case 'b':
    visTekst = "'b' trykket, derfor laves en Plante af typen BUSK på (" + mouseX + ", " + mouseY+")";
    w.createBusk(mouseX, mouseY);
    break;    

  case 'c':
    visTekst = "'c' trykket, derfor laves et Dyr af typen KAT på (" + mouseX + ", " + mouseY+")";
    w.createKat(mouseX, mouseY);
    break;    
  case 'k':
    visTekst = "'k' trykket, derfor laves et Dyr af typen KO på (" + mouseX + ", " + mouseY+")";
    w.createKo(mouseX, mouseY);
  default:
    break;
  }
}
