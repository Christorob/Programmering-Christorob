// 3D Earthquake Data Visualization
// The Coding Train / Daniel Shiffman
// https://thecodingtrain.com/CodingChallenges/058-earthquakeviz3d.html
// https://youtu.be/dbs4IYGfAXc
// https://editor.p5js.org/codingtrain/sketches/tttPKxZi

float angle;
Table table;
float r = 300;
PImage earth;
PShape globe;

void setup() {
  size(1400, 1000, P3D);
  earth = loadImage("earth.jpg");
  // table = loadTable("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/significant_day.csv", "header");
  table = loadTable("https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.csv", "header");

  noStroke();
  globe = createShape(SPHERE, r);
  globe.setTexture(earth);
}

void draw() {
  background(51);
  translate(width*0.5, height*0.5);
  rotateY(angle);
  angle += 0.005;

  lights();
  fill(200);
  noStroke();
  shape(globe);


  //Data
  JSONObject j = loadJSONObject("https://api.n2yo.com/rest/v1/satellite/positions/25544/41.702/-76.014/0/2/&apiKey=GUEEAL-Z7MBKJ-CPLJWD-4SOY");
  JSONArray positionsJson = j.getJSONArray("positions");


  JSONObject pos1 = positionsJson.getJSONObject(0);
  JSONObject pos2 = positionsJson.getJSONObject(1);

  float sat1Lon = pos1.getFloat("satlongitude");
  float sat1Lat = pos1.getFloat("satlatitude");

  float sat2Lon = pos2.getFloat("satlongitude");
  float sat2Lat = pos2.getFloat("satlatitude");



  println(sat1Lon, sat1Lat);
  println(sat2Lon, sat2Lat);


  //Stjålet fra Shiffman ;-)

  float theta = radians(sat1Lat);
  float phi = radians(sat1Lon) + PI;

  // fix: in OpenGL, y & z axes are flipped from math notation of spherical coordinates
  float x = r * cos(theta) * cos(phi);
  float y = -r * sin(theta);
  float z = -r * cos(theta) * sin(phi);


  //Sattelit Skaber:
  PVector distVec = new PVector(width/2 -x, height/2 -y, z);
  translate(distVec.x, distVec.y, distVec.z);
  sphere(10);
}
