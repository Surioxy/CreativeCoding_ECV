// Description : Affiche en Creative Coding M1 UX UI
// Author : Julien VAVRILLE

// Mes déclarations
String title = "Cosmic Abyss";
PFont titre;
int text_size = 80;

// SETUP
void setup() {
  size(563, 1000);
  background(0);

  affichage_texte();
}
// FIN SETUP


// BOUCLE DRAW
void draw() {
  // println("X : ",mouseX, "   Y : ", mouseY);
}
// FIN BOUCLE DRAW


// METHODES
void affichage_texte() {
  titre = createFont("AndoLight.ttf", text_size);
  // titre = createFont("Reznik-Light.ttf", text_size);
  fill(255);
  textFont(titre);
  textAlign(CENTER);
  text(title, width/2, 180);
}
// FIN METHODE
