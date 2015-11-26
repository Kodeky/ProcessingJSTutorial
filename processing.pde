ArrayList balls = new ArrayList();


void setup()
{
	size(500,500);
	background(50,10,10);
}

// Runs repeatedly until exit() is called.
void draw()
{ 
	background(50,10,10);

	if (balls.size() > 0) {
		for (int i = 0; i < balls.size(); i++) {
			balls.get(i).update();
			balls.get(i).draw();
		}
	
	}
	
}

void mouseClicked() {
	Ball b = new Ball(mouseX, mouseY);
	balls.add(b);
}

// Class and constructor for the ball.
class Ball {
	int x, y;
	int yV;
	int gravity;

	Ball(int initX, int initY) {
		x = initX;
		y = initY;
		yV = 1;
		gravity = 2;
	}
	
	void update() {
		yV += gravity;
		y += yV;
		if(y > 460) {
			yV = -20;
		}
	}
	
	void draw() {
		ellipse(x,y,50,50);
	}
	
}