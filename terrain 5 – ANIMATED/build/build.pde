 import peasy.*;

// ================================================================

int stageW      = 800;
int stageH      = 800;
color bgC       = #FFEE99;
color fgC       = #00FF99;
String dataPATH = "../../data";
PeasyCam cam;

// ================================================================

int cols, rows;
int scl = 20;
int w = 2000;
int h = 2000;
float inc = .4;
float move = .4;
int rough = 30;
float[][] terrain;

// ================================================================

void settings(){ 
	size(stageW, stageH, P3D);
}

// ================================================================

void setup() {
	background(bgC);

	cols = w / scl;
	rows = h / scl;

	terrain = new float[cols][rows];

	cam = new PeasyCam(this, 600);
}



// ================================================================
void draw() {
	float yoff = 0 + move;	
	for (int y = 0; y < rows; ++y) {
		float xoff = 0;
		for (int x = 0; x < cols; ++x) {
				terrain[x][y] = map(noise(xoff, yoff), 0,  1, -rough, rough);
				xoff += inc;
			}
		yoff += inc;
	}

	move -= .05;

	lights();		
	stroke(0);
	// fill(fgC);
	noFill();
	background(bgC);

	rotateX(PI/3);
	translate(-w/2, -h/2);

	for (int y = 0; y < rows - 1; ++y) {
		beginShape(TRIANGLE_STRIP);
		for (int x = 0; x < cols; ++x) {
			vertex(x * scl, y * scl, terrain[x][y]);
			vertex(x * scl, (y+1) * scl, terrain[x][y + 1]);
		}
		endShape();
	}

}
