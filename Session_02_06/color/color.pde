int color_a;
int color_b;
int color_c;

boolean check = false;

void setup() {
  size(400, 600);
  frameRate(25);
  background(255);
  colorMode(HSB, 360, 100, 100, 100);
  forme();
}

void draw() {
  forme();
}

// void mousePressed() {
//   background(0);
//   forme();
// }

void forme() {
  strokeWeight(10);
  color_a = color(200,100,100);
  color_b = color(300,100,100);
  color_c = color(random(0,180),100,100);
  fill(color_a);
  circle(random(20,280),random(50,200),random(50,200));

  fill(color_b);
  circle(random(50,200),random(10,600),random(50,200));

  fill(color_c);
  circle(random(0,400),random(0,600),random(50,200));
}

void keyPressed() {
  //i'd like to detect when space bar is pressed.
  if (key=='p') {
    check = true;
    frameRate(1);
  }
  //i'd like to detect when space bar is pressed.
  if (key=='m') {
    check = false;
    frameRate(100);
  }
}
