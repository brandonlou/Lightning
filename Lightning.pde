ArrayList<Float> points = new ArrayList<Float>();

float startX, startY, endX, endY;

void setup() {
	size(500,500);
	strokeWeight(5);
}

void draw() {

	points.clear();
	background(0);
	int x1 = mouseX;
	int y1 = mouseY;
	int x2 = width/2;
	int y2 = height/2;

	for (int i = 0; i <= 10; i++) {
 		float x = lerp(x1, x2, i/10.0) + 10;
 		float y = lerp(y1, y2, i/10.0);
 		points.add(x);
 		points.add(y);
	}

	int red = (int)(Math.random()*255);
	int green = (int)(Math.random()*255);
	int blue = (int)(Math.random()*255);

	stroke(red, green, blue);

	startX = points.get(0);
	startY = points.get(1);
	endX = points.get(2);
	endY = points.get(3) + (float)(Math.random()*40-20);

	line(startX, startY, endX, endY);

	drawLine(4,5);
	drawLine(6,7);
	drawLine(8,9);
	drawLine(10,11);
	drawLine(12,13);
	drawLine(14,15);
	drawLine(16,17);
	drawLine(18,19);

	startX = endX;
	startY = endY;
	endX = points.get(20);
	endY = points.get(21);

	line(startX, startY, endX, endY);

	noStroke();
	fill(red, green, blue);
	ellipse(260, height/2, 60, 60);
}

void drawLine(int nextX, int nextY) {

	if (mouseX > 150 && mouseX < 350) {

		startX = endX;
		startY = endY;
		endX = points.get(nextX) + (float)(Math.random()*40-20);
		endY = points.get(nextY);

		line(startX, startY, endX, endY);

	} else {

		startX = endX;
		startY = endY;
		endX = points.get(nextX);
		endY = points.get(nextY) + (float)(Math.random()*40-20);

		line(startX, startY, endX, endY);
	}
}