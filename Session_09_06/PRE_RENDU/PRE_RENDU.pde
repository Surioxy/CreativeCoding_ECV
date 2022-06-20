// Description : Affiche en Creative Coding M1 UX-UI
// Autheur : Julien VAVRILLE

// Mes déclarations
String title = "Recall from the abyss";
String infobloc = "click to sink";
PFont titre;
PFont infoclick;
int text_size = 80;
int text_size2 = 20;
int diam = 10;
float centerX, centerY;
import processing.pdf.*;
boolean print_is = false;
float myalpha = 20;
//Fin déclarations

// SETUP
void setup() {
  size(563, 1000);
  frameRate(60);
  background(20);
  noStroke();
  centerX = width/2;
  centerY = height/2;
  // rectMode(CENTER);
  // colorMode(HSB, 360, 100, 100, 100);
}
// FIN SETUP

// BOUCLE DRAW
void draw() {

  // Permet d'enregistrer l'image en png
  String nom_de_fichier = "affiche"+year()+"_"+month()+"_"+day()+"_"+hour()+"_"+minute()+"_"+second()+".png";
  if(print_is == true) {
    save(nom_de_fichier);
    print_is = false;
  }

  // String nom_de_fichier = "JuVAV_affiche"+year()+"_"+month()+"_"+day()+"_"+hour()+"_"+minute()+"_"+second()+".pdf";
  // if(print_is == true) {
  //   beginRecord(PDF,nom_de_fichier);
  // }

  affichage_texte_titre(); // Affiche les textes.
  animation(); // Affiche l'animation.
  // mes_formes(); // Affiche mes formes s'y formes il y a.

  // if(print_is == true) {
  //   endRecord();
  //   print_is = false;
  // }
}
// FIN BOUCLE DRAW

// METHODES
void affichage_texte_titre() {
  blendMode(BLEND);
  titre = createFont("AndoLight.ttf", text_size);
  infoclick = createFont("Poppins-Thin.ttf", text_size2);
  // titre = createFont("Reznik-Light.ttf", text_size);
  fill(255);
  textFont(titre);
  textAlign(CENTER);
  text(title, width/2, 180);

  fill(255, 0, 0, 10);
  textFont(infoclick);
  textAlign(CENTER);
  text(infobloc, width/2, height-20);
}


void keyPressed() {
  if(key == 'p') {
    print_is = true;
  }
  if(key == 'r') {
    background(random(0, 255),random(0, 255),random(0, 255));
  }
}


void mes_formes() {
}


void animation() {
  noFill();
  strokeWeight(1);
  stroke(255, 255, 255, myalpha);
  ellipse(centerX+random(-100, 100), centerY+random(-100, 100), diam, diam);
  ellipse(centerX-random(-100, 100), centerY-random(-100, 100), diam, diam);
  diam += 10;
  if (diam == height+100) {
    diam = 0;
  }
  if (diam == 0) {
    myalpha = myalpha/1.1;
  }
  delay(0);
  println("Valeur:", diam, " Alpha:", myalpha);
}


void mousePressed() {
  blendMode(DIFFERENCE);
  fill(random(0, 150),random(0, 150),random(0, 150));
  circle(mouseX+random(-250, 255), mouseY+random(-250, 255), random(10, 300));
  fill(random(0, 150),random(0, 150),random(0, 150));
  square(mouseX+random(-250, 255), mouseY+random(-250, 255), random(10, 300));
  fill(random(0, 150),random(0, 150),random(0, 150));
  triangle(mouseX+random(-200, 200),mouseX+random(-200, 200),mouseX+random(-200, 200),mouseX+random(-200, 200),mouseX+random(-200, 200),mouseX+random(-200, 200));
}

// FIN METHODE
