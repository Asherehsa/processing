//rect(x,y,w,h);
//ellipse(x,y,w,h);
//line(x1,y1,x2,y2);
//triangle(x1,y1,x2,y2,x3,y3);

//beginShape();
//vertex(x1,y1);
//vertex(x2,y2);
//vertex(x3,y3);
///vertex(x4,y4);
// etc;
//endShape();

PShape rectangle;

void setup() {  
  size(640,360,P2D);
 rectangle = createShape(RECT,0,0,100,50);
   rectangle.setStroke(color(40));  
  rectangle.setStrokeWeight(4);
}

void draw() {
  background(51);
  translate(mouseX,mouseY);
  shape(rectangle);
    rectangle.setFill(color(map(mouseX, 0, width, 0, 255)));pol
}
