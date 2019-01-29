public void setup()
{
	size(500, 500);
}
public void draw()
{
	background(#000000);
	noFill();
	stroke(255, (int)(Math.random()*40)+20, (int)(Math.random()*40)+20);
	strokeWeight(3);
	fractal(width/2, height/2, 500);

}
public void mouseDragged()//optional
{

}

public void fractal(int x, int y, int len) 
{
	stroke(255, x/4, x/4);
	ellipse(x, y, len, len);
	if ( len <= 20 ) {
		
	} else {
		fractal( x, y, len/2 );
		fractal( x - (len/2) , y, len/2 );
		fractal( x + (len/2) , y, len/2 );
		fractal( x, y - (len/2) , len/2 );
		fractal( x, y + (len/2) , len/2 );
		//fractal( x + (len/4) , y - (len/2) , len/2 );
	}
}