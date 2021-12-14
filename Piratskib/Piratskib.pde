float xSkib1 = 200, ySkib1 = 400;
float xSkib2 = 600, ySkib2 = 400;
float sF = 1;

void setup(){
  size(1000,800);  
  strokeWeight(3);
  stroke(80, 50, 0);
}

void draw(){
  
  clear();
  background(120, 150, 200);
  
  //Skib 1
  fill(80, 50, 0);
  line(xSkib1+120, ySkib1, xSkib1+150, ySkib1-10);
  noStroke();
  arc(xSkib1, ySkib1, 250*sF, 80*sF, 0, PI);
  arc(xSkib1-105, ySkib1-30, 50*sF, 100*sF, 0, PI);
  rect(xSkib1-30, ySkib1-90, 5, 120);
  rect(xSkib1+30, ySkib1-90, 5, 120);
  fill(245);
  ellipse(xSkib1-25, ySkib1-80, 20*sF, 40*sF);
  ellipse(xSkib1+38, ySkib1-80, 20*sF, 40*sF);
  
  //Kanon
  fill(20);
  triangle(xSkib1+70, ySkib1+1, xSkib1+100, ySkib1+1, xSkib1+90, ySkib1-15);
  rect(xSkib1+80, ySkib1-15, 40, 10);
  
  xSkib1 += 0.2;
  ySkib1 += sin(xSkib1);
  
  
  //-------------------------------------------------------------------------------
  
  //Skib 2
  fill(80, 50, 0);
  line(xSkib2-120, ySkib2, xSkib2-150, ySkib2-10);
  noStroke();
  arc(xSkib2, ySkib2, 250*sF, 80*sF, 0, PI);
  arc(xSkib2+105, ySkib2-30, 50*sF, 100*sF, 0, PI);
  rect(xSkib2+30, ySkib2-90, 5, 120);
  rect(xSkib2-30, ySkib2-90, 5, 120);
  fill(245);
  ellipse(xSkib2+25, ySkib2-80, 20*sF, 40*sF);
  ellipse(xSkib2-38, ySkib2-80, 20*sF, 40*sF);

  
  xSkib2 -= 0.2;
  ySkib2 += sin(xSkib2);
  
  //Kanon
  fill(20);
  triangle(xSkib2-70, ySkib2+1, xSkib2-100, ySkib2+1, xSkib2-90, ySkib2-15);
  rect(xSkib2-120, ySkib2-15, 40, 10);
  
  
  


}
