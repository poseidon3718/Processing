/*
void setup() {
  size(500, 500);
  background(90, 30, 50);
}

void draw() {
  ellipse(mouseX, mouseY, 150, 150);
}
*/
/*
void setup(){
size(400, 400);
background(255);
}
void draw(){
stroke(#4F898A);
fill(212, 240, 30);
rect(50, 50, 200, 200);

stroke(0,120);
fill(200, 15, 75, 50);
rect(150,150, 200, 200);
}
*/
/*
void setup(){
  size(400, 400);
  colorMode(HSB, 360, 100, 100, 100);
  background(255);
  blendMode(MULTIPLY);
}
void draw(){
  fill(50, 60, 110);
  ellipse(200, 200, 300, 300);

  fill(210, 60, 100);
  ellipse(300, 300, 300, 300);
}
*/
/*
void setup(){
  size(200, 200);
}
void draw() {
  background(234);

  strokeWeight(10);
  fill(200, 215, 180);
  beginShape();
  vertex(20, 20);
  vertex(80, 20);
  vertex(80, 40);
  vertex(40, 40);
  vertex(40, 60);
  vertex(60, 60);
  vertex(60, 80);
  vertex(40, 80);
  vertex(40, 120);
  vertex(20, 120);
  endShape(CLOSE);
}
*/

void setup() {
  size(200, 200);
}
void draw() {
  background(234);

  stroke(190, 200, 240);
  noFill();
  strokeWeight(10);

  beginShape();
  vertex(20, 20);
  vertex(40, 20);
  vertex(40, 50);
  vertex(70, 50);
  vertex(70, 20);
  vertex(90, 20);
  vertex(90, 110);
  vertex(20, 110);

  beginContour();
  vertex(40, 70);
  vertex(40, 90);
  vertex(70, 90);
  vertex(70, 70);
  endContour();

  endShape(CLOSE);
}
