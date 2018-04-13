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

public class build extends PApplet {

int stageW = 800;
int stageH = 800;
int bgC = 0xffFF7700;
String dataPATH = "../../data";

// ================================================================

public void settings(){
	size(stageW, stageH);
}

// ================================================================

public void setup() {
	background(bgC);

}

// ================================================================

public void draw() {
	background(bgC);
	
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "build" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
