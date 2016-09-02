int x1 = mouseX;
int y1 = 0;
int x2 = mouseX;
int y2 = 0;

int red,green,blue;

void setup() {
	size(300, 300);
	background(0);
	strokeWeight(5);
}

void draw() {
	fill(0,255,0);
	noStroke();
	rect(0,200,300,100);
	red = (int)(Math.random()*255);
	green = (int)(Math.random()*255);
	blue = (int)(Math.random()*255);

	while (y2 < 300) {
		x2 = x1 + (int)(Math.random()*20-10);
		y2 = y1 + (int)(Math.random()*10);
		stroke(red,blue,blue);
		line(x1, y1, x2, y2);
		x1 = x2;
		y1 = y2;
	}
}

void mousePressed() {
	background(0);
	x1 = mouseX;
	y1 = 0;
	x2 = mouseX;
	y2 = 0;
}


/*
FloatList points = new FloatList();

boolean hasStartX = false;
boolean hasStartY = false;
boolean hasEndX = false;
boolean hasEndY = false;

float startX, startY, endX, endY;

void setup() {
	frameRate(60);
	size(500,500);
	background(0);
	strokeWeight(5);
	noLoop();
}

void draw() {
}

void mousePressed() {
	points.clear();
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
 		points.append(x);
 		points.append(y);
 		//point(x, y);
	}
	
	for (int i=0; i<=points.size(); i++) {
		if (hasStartX == false) {
			startX = points.get(i);
			hasStartX = true;
		} else if (hasStartY == false) {
			startY = points.get(i);
			hasStartY = true;
		} else if (hasEndX == false) {
			endX = points.get(i);
			hasEndX = true;
		} else if (hasEndY == false) {
			endY = points.get(i);
			hasEndY = true;
		} else {
			stroke(0, 255, 0);
			line(startX, startY, endX, endY);
			startX = endX;
			startY = endY;
			hasEndX = false;
			hasEndY = false;
		}
	}
}
*/