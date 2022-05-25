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

void setup() {
  size(400, 600);
  background(255);


  int x1 = 0;
  int y1 = 0;
  int x2 = width;
  int y2 = height;
  int stroke_weight = 5;
  String final_message = "Bravo !   ";


  strokeWeight(stroke_weight);
  line(x1, y1, x2, y2);
  line(x2, y1, x1, y2);
  print(final_message);
}
