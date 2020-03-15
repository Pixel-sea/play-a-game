
float x1 = 40;
float y1 = 100;
float xspeed1 = 8;
float yspeed1 = 5;
float x2 = 70;
float y2 = 1;
float xspeed2 = 4;
float yspeed2 = 1;
float xR = 20;
float yR = 20;
void setup() {
  size(300, 500);
  smooth();
  background(22);}

void draw() {


  // Add the current speed to the position.
  x1 = x1 + xspeed1;
  y1 = y1 + yspeed1;
  x2 = x2 + xspeed2;
  y2 = y2 + yspeed2;
  if ((x2 > width) || (x2 < 0)) {
    xspeed2 = xspeed2 * -1;
  }
  if ((y2 > height) || (y2 < 0)) {
    yspeed2 = yspeed2 * -1;
  }
  if ((x1 > width) || (x1 < 0)) {
    xspeed1 = xspeed1 * -1;
  }
  if ((y1 > height) || (y1 < 0)) {
    yspeed1 = yspeed1 * -1;
  }

  // Display circle at x position
 //noStroke();
stroke(255);
  strokeWeight(2);
  if(sq(x1-x2)+sq(y1-y2)<sq(xR+yR)){
    fill(random(200),random(200),random(200),random(255));
  }
  rect(x1, y1, 2*xR, 2*xR);
rect(x2, y2, 2*yR, 2*yR);
}
