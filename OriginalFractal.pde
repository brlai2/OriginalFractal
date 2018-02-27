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

//public void mousePressed()
//{
//	num = (int)(Math.random()*805 + 5);
//}

public void fractal(int x, int y, int rad)
{
	ellipse(x, y, rad, rad);
//	if(rad <= num)
//	{
//		
//	}
//	else
//	{
	num = (int)(Math.random()*805 + 5);
	fractal(x+rad/4, y, rad/2);
	fractal(x-rad/4, y, rad/2);
	fractal(x, y+rad/4, rad/2);
	fractal(x, y-rad/4, rad/2);
	col --;
//	}
}
