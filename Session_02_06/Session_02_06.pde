PGraphics pg;

void setup(){
  size(200,200);
  fill(0, 0, 255);
  noStroke();
  smooth();
  pg = createGraphics(width, height, JAVA2D);
  pg.beginDraw();
  pg.smooth();
  pg.background(255, 0);
  pg.noStroke();
  pg.fill(255,0,0);
  pg.ellipse(100,100,95,95);
  pg.filter( BLUR, 6 );
  pg.fill(255,255,0);
  pg.ellipse(100,100,90,90);
  pg.endDraw();
}

void draw(){
  background(255);
  ellipse(mouseX, mouseY, 100, 100);
  image(pg, 0, 0);
}
