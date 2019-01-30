public void setup()
{
	size(500, 500);
	background(#000000);
	

}
public void draw()
{
	noStroke();
	fill(10, 10, 10, 1);
	rect(0, 0, width, height);
	noFill();
	stroke(255, (int)(Math.random()*40)+20, (int)(Math.random()*40)+20);
	strokeWeight(3);
}
public void mousePressed() {
	background(#000000);
	//fractal(width/2, height/2, 500);
	if ( mouseX < width*3/5 && mouseX > width*2/5 && mouseY < height*3/5 && mouseY > height*2/5)
		fractal(width/2, height/2, 500);
	else if ( mouseX < width/2 && mouseY < height/2 ) 
		fractal(0, 0, 500);
	else if ( mouseY < height/2 ) 
		fractal(width, 0, 500);
	else if  ( mouseX > width/2 ) 
		fractal(width, height, 500);
	else 
		fractal(0, height, 500);
}
public void mouseDragged() {
	stroke(255, (int)(Math.random()*200)+55, mouseX/4);
}

public void fractal(float x, float y, float len) 
{
	//stroke(255, mouseX/4, (int)(Math.random()*200)+55);
	stroke(255, (int)(Math.random()*200)+55, mouseX/4);
	ellipse(x, y, len, len);
	if ( len <= 50 ) {
		
	} else {
		fractal( x, y, len/2 );

		//old shape
		//fractal( x - (len/2) , y, len/2 );
		//fractal( x + (len/2) , y, len/2 );
		//fractal( x, y - (len/2) , len/2 );
		//fractal( x, y + (len/2) , len/2 );

		//diagonal or somthing
		//fractal( x - (len/2) , y - (len/2) , len/1.5 );
		//fractal( x + (len/2) , y + (len/2) , len/1.5 );

		//weird shapes
		fractal( x - (len/2) , y, len/3.5 );
		fractal( x + (len/2) , y, len/3.5 );
		fractal( x, y - (len/2) , len/2.5 );
		fractal( x, y + (len/2) , len/2.5 );
		//fractal( x + (len/4) , y - (len/2) , len/2 );

		fractal( x - (len/2) , y - (len/2) , len/5.25 );
		fractal( x + (len/2) , y + (len/2) , len/5.25 );
		fractal( x + (len/2) , y - (len/2) , len/5.25 );
		fractal( x - (len/2) , y + (len/2) , len/5.25 );
		
		//if in center
		if ( mouseX < width*3/5 && mouseX > width*2/5 && mouseY < height*3/5 && mouseY > height*2/5) {
			fractal( x - (len/2) , y - (len/2) , len/5.25 );
			fractal( x + (len/2) , y + (len/2) , len/5.25 );
			fractal( x + (len/2) , y - (len/2) , len/5.25 );
			fractal( x - (len/2) , y + (len/2) , len/5.25 );
		} else if ( mouseX < width/2 && mouseY < height/2 ) {
			//fractal(0, 0, 500);
		}
		else if ( mouseY < height/2 ) {
			//fractal(width, 0, 500);
		}
		else if  ( mouseX > width/2 ) {
			//fractal(width, height, 500);
		}
		else {
			//fractal(0, height, 500);
		}
	}
}