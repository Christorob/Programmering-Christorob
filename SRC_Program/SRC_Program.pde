Table stateCases; 
String[] stateNames;
boolean dataLoaded = false;
float[] stateAngles = new float[52];
float totalCases = 0;

void setup(){
size(1600,800);

}

void draw(){
  clear();
  background(255);
  
}

void getData(){
stateCases = loadTable("https://github.com/nytimes/covid-19-data/blob/master/live/us-states.csv");
dataLoaded = true;
}

void getStateNames(){
  int stateNR = 0;
  for(TableRow state : stateCases.rows()) {
    String name = state.getString("state");
    stateNames[stateNR] = name;
    stateNR++;
  }
}
