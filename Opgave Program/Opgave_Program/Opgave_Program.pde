// Et objekt er ligsom et eksempel på en ting. Det indeholder data, som afgør hvad det objekt er. Et eksempel på et objekt kunne være således:

void Setup() {
  size(200,200);
}

class Person {
  String hairColour;
  float age;
  float personHeight;
  
  
  Person(String hairColourTemp, float ageTemp, float personHeightTemp){
  hairColour = hairColourTemp;
  age = ageTemp;
  personHeight = personHeightTemp;
  
  }
}
