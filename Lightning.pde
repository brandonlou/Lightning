int counter = 0;

int startX, startY, endX, endY;

int red = (int)(Math.random()*255);
int green = (int)(Math.random()*255);
int blue = (int)(Math.random()*255);


void setup() {
	size(500,500);
	frameRate(10);
	strokeWeight(5);
}


void draw() {
	background(0);
	startX = mouseX;
	startY = mouseY;
	while(counter <=50) {
		if(counter == 50) {
			line(startX, startY, width,height/2);
		}
		endX = startX + (int)(Math.random()*10);
		endY = startY + (int)(Math.random()*20-10);
		stroke(red, green, blue);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
		counter++;
	}
	counter = 0;
}