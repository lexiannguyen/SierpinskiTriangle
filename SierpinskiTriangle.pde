public void setup()
{
  size(400, 400);
}
public void draw()
{
  sierpinski(100, 300, 200);
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
    
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2, len/2);
    sierpinski(x + len/4, y - len/2, len/2);

   }


}
