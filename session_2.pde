/*
// 창의 크기 설정 
size( 300, 200);

// red, green, blue
background(200);

//point(x, y)
point(150, 100);
point(151, 100);
point(152, 100);
point(153, 100);
point(154, 100);

//line(x1,x2, y1, y2);
line(300, 200, 0, 0);
line(300, 0, 0, 200);

//rect(x, y, w, h);
rectMode(CENTER);
//rect(150, 100, 50, 50);

//ellipse(x, y, w, h);
strokeWeight(5);
stroke(255, 0, 255);
//noStroke();

fill(30, 255, 255);
noFill();
ellipse(150, 100, 120, 120);
*/


void setup(){
  size(1000/2, 1333/2);
  background(0);  
  /*
  textSize(30);
  PFont font = createFont("Abril Fatface", 30);
  textFont(font);
  text("This too shall pass.", 150, 150);
  */
  
  PImage img = loadImage("ww.png");
  image(img, 0, 0, 1000/2, 1333/2);
}
