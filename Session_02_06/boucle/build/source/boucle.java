/* autogenerated by Processing revision 1283 on 2022-06-02 */
import processing.core.*;
import processing.data.*;
import processing.event.*;
import processing.opengl.*;

import java.util.HashMap;
import java.util.ArrayList;
import java.io.File;
import java.io.BufferedReader;
import java.io.PrintWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.IOException;

public class boucle extends PApplet {

 public void setup() {
  /* size commented out by preprocessor */;
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


  public void settings() { size(400, 600); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "boucle" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
