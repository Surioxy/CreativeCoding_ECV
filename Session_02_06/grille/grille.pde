void setup() {
  size(400, 600);
  int taille = 50;
  background(200);
  push();
  translate(-taille, -taille);
  grille(taille);
  pop();
}

void grille(int taille) {
  int cell_x = width/taille;
  int cell_y = height/taille;
  int num = cell_x*cell_y;

  println(num);
  int y = 0;
  int x = 0;
  for (int i = 0; i < num; i++) {
    if(i%cell_x==0) {
      y = y+taille;
      x=0;
    }
    x = x+taille;
    x++;

    if(i%2==0) {
      push();
      float offset = taille/2;
      translate(x+offset,y);
      rotate(PI/4);
      motif(0,0,taille);
      pop();
    } else {
      motif(x,y,taille);
    }
  }
}

void motif(int x, int y, int taille) {
  square(x,y,taille);
}
