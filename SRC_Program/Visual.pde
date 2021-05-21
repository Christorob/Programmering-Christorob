float x, y, w, dataInput;

class bar{
  bar(float x_, float y_, float w_, float dataInput_){
  
    x = x_;
    y = y_;
    w = w_;
    dataInput = dataInput_;
  }
}

void dataManagement(){
  rect(x, y, w, dataInput);
  
}


void lines(){
   line(100, 700, 100, 100);
   line(100, 700, 1500, 700);
}
