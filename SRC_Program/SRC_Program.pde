Table stateCases; 
String[] stateNames = new String[55];
boolean dataLoaded = false;
int totalCases = 0;
bar bar1;

// Declare Header Font
PFont h1;

//Declare Label Font
PFont l1;

void setup(){
  size(1600,800);
  thread("run");
  textAlign(CENTER);
  textSize(20);
     smooth();
   //Use system font 'Arial' as the header font with 12 point type
   h1 = createFont("Arial", 12, false);
   //Use system font 'Arial' as the label font with 9 point type
   l1 = createFont("Arial", 9, false);
   
   run();
   drawBars();
  
}

void draw(){
  clear();
  //Set Background to white.
  background(255);
  fill(0);
  
  if(dataLoaded = true){
  lines();
  text("Total Cases in the US: " + totalCases, 200, 80);
  }
 
}

void run(){
  getData();
  
  //customValue();
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
    String name = "";
    if(state.getString("state") != null)
      name = state.getString("state");
    stateNames[stateID] = name;
    //println(name);
    stateID++;
    //println(stateID);
  }
}

void getStateData(){
  totalCases = 0;
  for(TableRow cases : stateCases.rows()) {
    println("Cases: " + cases.getInt("cases"));
    int caseAmount = Integer.parseInt(cases.getString("cases"));
    totalCases += caseAmount;
    println(caseAmount);
    println(totalCases);
  }
}

void drawBars(){
  for(TableRow cases : stateCases.rows()) {
    int caseAmount = cases.getInt("cases");
    bar1 = new bar(150, 150, 10, caseAmount);
  }
}
