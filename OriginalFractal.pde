public void setup()
{
  size(500,500);
}
public void draw()
{
  background(0);
  fractal(250,250,5,5);
}
public void fractal(int x, int y, int a, int b)
{   noFill();
  stroke((float)Math.random()*256, (float)Math.random()*256,(float)Math.random()*256);
  ellipse((float)x,(float)y,(float)a, (float)b);
  if(a<=20)
  {   fractal(x-25,y-25,a*2,b*2);
    fractal(x-50,y-50,a*2,b*2);  //top left
    fractal(x-50,y+50,a*2,b*2);
    fractal(x-25,y+25,a*2,b*2);  //bottom left
    fractal(x+25,y-25,a*2,b*2);
    fractal(x+50,y-50,a*2,b*2);  //top right
    fractal(x+25,y+25,a*2,b*2);
    fractal(x+50,y+50,a*2,b*2);  //botttom right
  }
  
}
