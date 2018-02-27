int col = 0;
public void setup()
{
	size(800, 800);
	background(0);
}
public void draw()
{
	fill(45, 254, 63);
	//noFill();
	stroke(col);
	//strokeWeight(1);
	fractal(400, 400, 20);
}
public void fractal(int x, int y, int rad)
{
  if(col>=200){
	  ellipse(x, y, rad, rad);
	  fractal(x, y, rad+rad);
	  col ++;
  }
}