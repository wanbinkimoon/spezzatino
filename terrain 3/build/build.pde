import peasy.*;

// ================================================================

int stageW      = 800;
int stageH      = 800;
color bgC       = #FFEE99;
String dataPATH = "../../data";
PeasyCam cam;

// ================================================================

int cols, rows;
int scl = 20;
int w = 0;
int h = 0;

// ================================================================

void settings(){ 
	size(stageW, stageH, P3D);


}

// ================================================================

void setup() {
	background(bgC);
	w = width;
	h = height;

	cols = w / scl;
	rows = h / scl;

	cam = new PeasyCam(this, 600);
}

// ================================================================
void draw() {
	lights();		
	stroke(0);
	noFill();

	background(bgC);

	rotateX(PI/3);
	translate(-w/2, -h/2);

	for (int y = 0; y < rows + 1; ++y) {
		beginShape(TRIANGLE_STRIP);
		for (int x = 0; x < cols + 1; ++x) {
			vertex(x * scl, y * scl, x * scl);
			vertex(x * scl, (y+1) * scl);

		}
		endShape();
	}
	
}
