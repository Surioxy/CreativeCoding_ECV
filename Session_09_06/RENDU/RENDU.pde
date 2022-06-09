// Description : Affiche en Creative Coding M1 UX UI
// Author : Julien VAVRILLE

// Mes déclarations
String title = "Title goes here";
PFont titre;
PGraphics pg;
int text_size = 80;
import processing.pdf.*;
boolean print_is = false;
//Fin déclarations

// SETUP
void setup() {
  size(563, 1000);
  background(0);
  noStroke();
}
// FIN SETUP


// BOUCLE DRAW
void draw() {
  String nom_de_fichier = "JuVAV_affiche"+year()+"_"+month()+"_"+day()+"_"+hour()+"_"+minute()+"_"+second()+".pdf";
  if(print_is == true) {
    beginRecord(PDF,nom_de_fichier);
  }
  // blurshape();
  affichage_texte();
  affichage_ellipse();
  if(print_is == true) {
    endRecord();
    print_is = false;
  }
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

void affichage_ellipse() {
  int x = width/2;
  int y = height/2;
  int taille = 200;
  fill(255,7,116);
  circle(x,y,taille);
}

void blurshape() {
  //pg = createGraphics(width, height, JAVA2D);
  //beginDraw();
  smooth();
  // background(0,0,0,0);
  noStroke();
  fill(255,0,0);
  circle(100,100,95);
  filter( BLUR, 6 );
  fill(255,255,0);
  circle(100,100,90);
  // filter( BLUR, 6 );
  circle(width/2, height/2, 300);
}

void keyPressed() {
  if(key == 'p') {
    print_is = true;
  }
}
// FIN METHODE
