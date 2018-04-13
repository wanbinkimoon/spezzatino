int stageW      = 800;
int stageH      = 800;
color bgC       = #000000;
String dataPATH = "../../data";

// ================================================================

void settings(){ 
	size(stageW, stageH);

}

// ================================================================

void setup() {
	background(bgC);

}

// ================================================================

float xoff1 = 0;
float xoff2 = 10000;

// ================================================================
void draw() {
	background(bgC);
	noFill();
	stroke(255);
	// ================================================================
	beginShape();
	for (int x = 0; x < width; ++x) {
		float y = map(noise(xoff1), 0, 1, 0, height);
		xoff1 += 0.01;	

		vertex(x, y);
	}
	endShape();

	noLoop();

}
