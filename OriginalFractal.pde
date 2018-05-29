int num = 200;

public void setup()
{
  size(800, 800);
}
public void draw()
{
  fill(24, 48, 149,50);
  rect(-5, -5, 805, 805);
  fractal(400, 400, 800);
}
public void fractal(int x, int y, int z)
{
  ellipse(x, y, z, z);
  if(z <= num)
  { 
  }
  else
  {
    fractal(x+z/4, y, z/2);
    fractal(x-z/4, y, z/2);
    fractal(x, y+z/4, z/2);
    fractal(x, y-z/4, z/2);
  }
}
