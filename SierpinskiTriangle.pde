public int myColor = 0;
public int mycolor2;
public void setup()
{
  size(600, 600);
}
public void draw()
{
  sierpinski(125, 500, 400, myColor, mycolor2);
}

public void mouseDragged(){
  sierpinski(mouseX, mouseY, 400, myColor, mycolor2);
  
}

public void mousePressed()//optional
{
  
  myColor = color((int)(Math.random()*256), //red
     (int)(Math.random()*256), //green
     (int)(Math.random()*256));
  mycolor2 = color((int)(Math.random()*256), //red
     (int)(Math.random()*256), //green
     (int)(Math.random()*256));
  redraw();
}


public void keyPressed(){ //clears screan of repeating triangles
  if(key == 'c' || key == 'C'){
    background(200);
    //sierpinski(100, -270, 200, myColor, mycolor2);
  }
  
}
public void sierpinski(int x, int y, int len, int thecolor, int thecolor2) 
{
  if(len <= 20){
   /* if(len % 3 == 0){
      fill(thecolor);
    }
    else{
      fill(thecolor2);
    }*/
    
    triangle(x, y, (x + len/2), (y - len), (x + len), y);
    }
   else{
    
    fill(thecolor2);
    sierpinski(x, y, len/2, thecolor, thecolor2);
    sierpinski(x + len/2, y, len/2, thecolor, thecolor2);
    fill(thecolor);
    sierpinski(x + len/4, y - len/2, len/2, thecolor, thecolor2);

   }


}
