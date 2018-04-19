import peasy.*;

// ================================================================

int stageW      = 800;
int stageH      = 800;
color bgC       = #000000;
String dataPATH = "../../data";
PeasyCam cam;

int yRotation = 0;

// ================================================================

int cols, rows;
int scl = 20;
int w = 2000;
int h = 2000;
float inc = .08;
float move = .04;
int rough = 100;
float[][] terrain;

// ================================================================

void settings(){ 
	size(stageW, stageH, P3D);
}

// ================================================================

void setup() {
	background(bgC);
	colorMode(HSB);

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
	move -= .01;

	lights();		
	// stroke(strokeC);
	noStroke();
	background(bgC);
	// fill(fgC);			

	rotateX(PI/3);
	rotateY(radians(yRotation));
	translate(-w/2, -h/2, -300);

	for (int y = 0; y < rows - 1; ++y) {
		beginShape(TRIANGLE_STRIP);
		for (int x = 0; x < cols; ++x) {
			fill(x + y, 120, 200);
			vertex(x * scl, y * scl, terrain[x][y]);
			vertex(x * scl, (y+1) * scl, terrain[x][y + 1]);
		}
		endShape();
	}

}
