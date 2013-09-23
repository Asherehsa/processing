PShape bot;
PFont f;

void setup() {
  size(640, 360);
  println(PFont.list());
  f = createFont("Georgia", 24);
  textFont(f);
  ellipseMode(CENTER);
} 

void draw() {
  background(56); 
  translate(width/2, height/2);
  ellipse(0,0,20,20);
  float zoom = map(mouseX, 0, width, 0.1, 1);
  pushMatrix();
  scale(1, zoom);
  ellipse(0,0,350,350);
  popMatrix();
  zoom = map(zoom,0.1, 1, .999, 0.1);
  String zoomt = "Eccentricity: " + zoom;
  text(zoomt,120,150);
}

