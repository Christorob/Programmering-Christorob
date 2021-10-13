void branch(float h) {




  //højde ændrerer
  h *= 0.75;
  // Here, ours is when the length of the branch is 2 pixels or less

  if (h > 2) {
    //For Ene side:
    //Gemmer hvor vi er
    pushMatrix();   
    //Roterer med vinkel v
    rotate(v);
    //Tegner linjen
    line(0, 0, 0, -h);  
    //Tilbage til enden af grenen
    translate(0, -h); 
    //Rekursion
    branch(h);       
    popMatrix();     

    //Samme for anden side:
    pushMatrix();
    rotate(-v);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
  }
}
