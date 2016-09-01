float[20] points;

void setup() {
	frameRate(60);
	size(500,500);
	background(0);
	strokeWeight(5);
}

void draw() {
}

void mousePressed() {
	background(0);
	int x1 = mouseX;
	int y1 = mouseY;
	int x2 = width;
	int y2 = height/2;

	stroke(0,255,0);
	//line(x1, y1, x2, y2);

	for (int i = 0; i <= 10; i++) {
 		float x = lerp(x1, x2, i/10.0) + 10;
 		float y = lerp(y1, y2, i/10.0);
 		points[points.length + 1] = x;
 		points[points.length + 1] = y;

 		//point(x, y);
	}
	System.out.println(points.length);
}