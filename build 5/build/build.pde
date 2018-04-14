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

float inc = 0.01;
float start = 0;

// ================================================================
void draw() {
	background(bgC);
	noFill();
	stroke(255);
	float xoff1 = start;
	// ================================================================
	beginShape();
	for (int x = 0; x < width; ++x) {
		float y = map(noise(xoff1), 0, 1, 0, height);
		xoff1 += inc;	
		vertex(x, y);
	}
	endShape();

	start += inc;
}
