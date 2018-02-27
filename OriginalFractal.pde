int num = 50;
int col = 255;

public void setup()
{
	size(800, 800);
	background(0);
}

public void draw()
{
	fill(0, 0, 0, 50);
	rect(-5, -5, 805, 805);
	noFill();
	stroke(col);
	strokeWeight(1);
	fractal(400, 400, 800);
}
 
public void fractal(int x, int y, int rad)
{
	x = 400;
	y = 400;
	ellipse(x, y, rad, rad);
	num = (int)(Math.random()*805 + 5);
	fractal(x+rad/4, y, rad/2);
	fractal(x-rad/4, y, rad/2);
	fractal(x, y+rad/4, rad/2);
	fractal(x, y-rad/4, rad/2);
	col --;
}
