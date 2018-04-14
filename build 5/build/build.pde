int stageW      = 800;
int stageH      = 800;
color bgC       = #000000;
String dataPATH = "../../data";

// ================================================================

void settings(){ 
	size(stageW, stageH);
	pixelDensity(1);
}

// ================================================================

void setup() {
	background(bgC);

}

// ================================================================

float inc = 0.01;
float xoff = 0.01;

// ================================================================
void draw() {

	loadPixels();
	int index = width * height;

		for (int i = 0; i < index; ++i) {
			int r = int(map(noise(xoff), 0, 1, 0, 255));
			pixels[i] = color(r, 102, 204);

			xoff += inc;
		}
	updatePixels();

	noLoop();
}
