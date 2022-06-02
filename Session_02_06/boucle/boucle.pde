void setup() {
  size(400, 600);
  background(255);

  int mon_espacement = width/20;

// Pour i = 20, temps que i est inférieur à 400 alors i s'incrémente de 40
  for (int i = mon_espacement; i < 400; i = i+40) {
    fill(0);
    int x = i;
    int y = height/2;
    int largeur = 5;
    circle(x, y, largeur);
  }
}
