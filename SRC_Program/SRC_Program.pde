Table stateCases; 
String[] stateNames = new String[55];
boolean dataLoaded = false;
int totalCases = 0;

void setup(){
  size(1600,800);
  thread("run");
  textAlign(CENTER);
  textSize(20);
  
}

void draw(){
  clear();
  background(255);
  fill(0);
  text(totalCases, 100, 100);
  
}

void run(){
  getData();
  
}


void getData(){
stateCases = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/live/us-states.csv", "header");
// date,state,fips,cases,deaths,confirmed_cases,confirmed_deaths,probable_cases,probable_deaths
  getStateNames();
  getStateData();
dataLoaded = true;
}

void getStateNames(){
  int stateID = 0;
  for(TableRow state : stateCases.rows()) {
    String name = state.getString("state");
    stateNames[stateID] = name;
    println(name);
    stateID++;
  }
}

void getStateData(){
  totalCases = 0;
  for(TableRow cases : stateCases.rows()) {
    int caseAmount = cases.getInt("cases");
    totalCases += caseAmount;
    println(caseAmount);
    println(totalCases);
  }
}
