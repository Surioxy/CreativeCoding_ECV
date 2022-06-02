void setup() {
  size(400, 600);

  println(g.colorMode);
  println("rouge",g.colorModeX); //rouge
  println("vert",g.colorModeY); //vert
  println("bleu",g.colorModeZ); //bleu
  println("alpha",g.colorModeA); //Alpha

  int couleur = color(255,255,0);
  background(couleur);

  colorMode(HSB, 360, 100,100,100);
  println("hue",g.colorModeX); //rouge
  println("saturation",g.colorModeY); //vert
  println("brightness",g.colorModeZ); //bleu
  println("alpha",g.colorModeA); //Alpha

  background(360,100,100);
}

void draw() {
 float couleur = map(mouseX, 0, width, 0, 360);
  background(couleur,100,100);
  println(couleur);
}
