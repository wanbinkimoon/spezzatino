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

// ================================================================
void draw() {

	loadPixels();
		for (int y = 0; y < width; ++y) {	
			float xoff = 0.01;
			for (int x = 0; x < height + 1; ++x) {
				int r = int(map(noise(xoff), 0, 1, 0, 255));
				int index = (x + y * width);

				pixels[index] = color(r, 102, 204);
				xoff += inc;
			}
		}
	updatePixels();

	noLoop();
}
