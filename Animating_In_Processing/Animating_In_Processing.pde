ArrayList<Skater> skaterList = new ArrayList<Skater>();
PImage skaterImages [];
PImage sewer;
PImage light;
int skaterFrames;
void setup() {
  imageMode(CENTER);
  frameRate(60);
  size(1280, 640);

  sewer = loadImage("data/Sewer.png");
  light = loadImage("data/Light.png");

  skaterFrames = 33;
  skaterList.add( new Skater());

  skaterImages = new PImage[skaterFrames];
  for (int i = 0; i < skaterFrames; i++) {
    skaterImages[i] = loadImage("data/Skater" + nf(i, 2) + ".png");
  }
}

void draw() {
  image(sewer, width/2, height/2, width, height);

  for (Skater s : skaterList) {
    s.display();
    s.updateFrames();
  }

  image(light, width/2, height/2, width, height);
}
