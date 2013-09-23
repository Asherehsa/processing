import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Eccentricity extends PApplet {

PShape bot;
PFont f;

public void setup() {
  size(640, 360);
  println(PFont.list());
  f = createFont("Georgia", 24);
  textFont(f);
  ellipseMode(CENTER);
} 

public void draw() {
  background(56); 
  translate(width/2, height/2);
  ellipse(0,0,20,20);
  float zoom = map(mouseX, 0, width, 0.1f, 1);
  pushMatrix();
  scale(1, zoom);
  ellipse(0,0,350,350);
  popMatrix();
  text(zoom,150,150);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Eccentricity" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
