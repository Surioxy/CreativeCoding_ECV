
// SETUP
void setup() {
  size(400, 600);
  background(0);
  // frameRate(12);
}
// FIN SETUP


// BOUCLE DRAW
void draw() {
  println("frameCount : ", frameCount);
  float sin_valeur = sin(frameCount * 0.1);
  println("sin frameCount : ", sin_valeur);
  float gris = abs(sin_valeur * 255);
  float gris = abs(sin_valeur * 255);
  float gris = abs(sin_valeur * 255);
  background(gris);
}
// FIN BOUCLE DRAW
