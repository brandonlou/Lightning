void setup() {
  size(500,500);
  strokeWeight(2);
  background(0);
}

int startX = 0;
int startY = height/2;
int endX = 0;
int endY = height/2;

void draw() {
	while (endX < width) {
		stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		endX = startX + (int)(Math.random()*9);
		endY = startY + (int)(Math.random()*18-9);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed() {
	background(0);
	startX = 0;
	startY = height/2;
	endX = 0;
	endY = height/2;
}

//todo: sphere in middle with lightning that follows your cursor

