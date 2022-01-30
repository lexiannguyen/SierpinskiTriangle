public void setup()
{
  size(400, 400);
}
public void draw()
{
  sierpinski(40, 50, 30);
}

/*
public void mouseDragged()//optional
{

}
*/

public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    fill(0);
    triangle(x, y, (x + len/2), (y - len), (x + len), y);
    }
   else{
    fill(0);
    sierpinski(x, y, (x + len/4), (y - len/2), (x + len/2), y);
    /*
    sierpinski((x + len/2), y, (x + len/4), (y - len/2), (x + len), y);
    sierpinski((x + len/4), (y - len/2), (x + len/8), (y - len), (x + len/2), (y-len/2));
    */
    len -= 10;
   }



/*
If len is less than or equal to 20 (or some variable)
Draw a triangle with the left corner at (x,y) and a base and height equal to len.
else
recursively call the sierpinksi function to draw a triangle with the left corner at (x,y) and a base and height equal to len/2.
call the sierpinksi function a second time to draw another triangle a distance of len/2 to the right of the first triangle.
Now, call the sierpinksi function a third time to draw a triangle a distance of len/4 to the right and len/2 up from the first triangle.
This triangle should "sit on top" of the first two.
*/

}
