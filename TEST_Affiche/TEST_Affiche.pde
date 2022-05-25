// void setup() {
//   String final_message = "Bravo !   ";
//
//   size(400, 600);
//   background(0);
//   print(final_message);
//   int taille = 100;
//   int x = 60;
//   int y = 120;
//   square(x, y, taille);
//   circle(x, y, taille);
// }

String title = "Creative\nCoding";
String final_message = "Bravo !   ";
PFont h1_font;

void setup() {
  size(400, 600);
  background(50);

  affichage_img();
  affichage_texte();

  print(final_message);
}

void affichage_img() {
  int x1 = 0;
  int y1 = 0;
  int stroke_weight = 5;

  strokeWeight(stroke_weight);
  line(x1, y1, width, height);
  line(width, y1, x1, height);
}

void affichage_texte() {
  h1_font = createFont("Arvo-Bold.ttf",48);
  fill(255);
  textSize(48);
  textFont(h1_font);
  textAlign(CENTER);
  text(title, width/2, height/4);
}
