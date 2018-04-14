int stageW      = 800;
int stageH      = 800;
color bgC       = #FFEE99;
String dataPATH = "../../data";

// ================================================================

int cols, rows;
int scl = 20;

// ================================================================

void settings(){ 
	size(stageW, stageH, P3D);


}

// ================================================================

void setup() {
	background(bgC);
	int w = width;
	int h = height;

	cols = w / scl;
	rows = h / scl;
}

// ================================================================
void draw() {
	stroke(0);
	noFill();

	background(bgC);

	for (int x = 0; x < cols; ++x) {
		for (int y = 0; y < rows; ++y) {
			rect(x * scl, y * scl, scl, scl);
		}
	}

	
}
