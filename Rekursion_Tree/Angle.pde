void tree(){
//Finds angle using mouse position
  float a = (mouseX / (float) width) * 90f;
  
// Converts from degrees to radians
  v = radians(a);
  
//Creates tree at the bottom middle
  translate(width/2, height);

//Creates line, then moves to end of the line
  line(0, 0, 0, -150);
  translate(0, -150);

//Rekursion begynder
  branch(50);
}
