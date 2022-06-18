// Description : Affiche en Creative Coding M1 UX-UI
// Autheur : Julien VAVRILLE

// Mes déclarations
String title = "Title goes here";
PFont titre;
int text_size = 80;
import processing.pdf.*;
boolean print_is = false;
//Fin déclarations

// SETUP
void setup() {
  size(563, 1000);
  frameRate(60);
  background(20);
  noStroke();
}
// FIN SETUP

// BOUCLE DRAW
void draw() {

  String nom_de_fichier = "affiche"+year()+"_"+month()+"_"+day()+"_"+hour()+"_"+minute()+"_"+second()+".png";
  if(print_is == true) {
    save(nom_de_fichier);
    print_is = false;
  }

  // String nom_de_fichier = "JuVAV_affiche"+year()+"_"+month()+"_"+day()+"_"+hour()+"_"+minute()+"_"+second()+".pdf";
  // if(print_is == true) {
  //   beginRecord(PDF,nom_de_fichier);
  // }

  affichage_texte_titre();

  // if(print_is == true) {
  //   endRecord();
  //   print_is = false;
  // }
}
// FIN BOUCLE DRAW

// METHODES
void affichage_texte_titre() {
  titre = createFont("AndoLight.ttf", text_size);
  // titre = createFont("Reznik-Light.ttf", text_size);
  fill(255);
  textFont(titre);
  textAlign(CENTER);
  text(title, width/2, 180);
}

void keyPressed() {
  if(key == 'p') {
    print_is = true;
  }
  if(key == 'r') {
    background(random(0, 255),random(0, 255),random(0, 255));
  }
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
// FIN METHODE
