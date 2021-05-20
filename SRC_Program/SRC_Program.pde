Table stateCases; 
String[] stateNames;
boolean dataLoaded = false;
float[] stateAngles = new float[52];
float totalCases = 0;

void setup(){
size(1600,800);
 run();
}

void draw(){
  clear();
  background(255);
  
}

void run(){
  getData();
  getStateNames();
  getStateData();
}


void getData(){
stateCases = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/live/us-states.csv");
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

void getStateData(){
  int totalCases = 0;
  for(TableRow state : stateCases.rows()) {
    float cases = state.getFloat("cases");
    totalCases += cases;
  }
}
