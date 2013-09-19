/**
 * Scale Shape.  
 * Illustration by George Brower. 
 * 
 * Move the mouse left and right to zoom the SVG file.
 * This shows how, unlike an imported image, the lines
 * remain smooth at any size.
 */

// The next line is needed if running in JavaScript Mode with Processing.js
/* @pjs preload="bot1.svg"; */ 

PShape bot;
PFont f;

void setup() {
  size(640, 360);
  println(PFont.list());
  f = createFont("Georgia", 24);
  textFont(f); // Arial, 16 point, anti-aliasing on
  ellipseMode(CENTER);
} 

void draw() {
  background(56); 
  translate(width/2, height/2);
  float zoom = map(mouseX, 0, width, 0.1, 1);
  print("zoom: " + zoom);
  scale(1, zoom);
  //ellipse(0,0,350,350);
  ellipse(0,0,50,50);
  fill(0);
  textAlign(CENTER);
  text(zoom,100, 95);
}
