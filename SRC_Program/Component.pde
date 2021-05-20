String userInput;

void customValue() {
    if (key == BACKSPACE && key != ENTER && userInput.length() > 0) {
      userInput = userInput.substring(0, userInput.length() - 1);
    } else if (key != BACKSPACE && key != ENTER && userInput.length() < 10) {
      if(userInput.length() == 1 && userInput == "0"){
        userInput = "";
        println(userInput);
      }
    }
}
/*
void stateDetection(){
    if(userInput == stateName){
    }

}
*/
