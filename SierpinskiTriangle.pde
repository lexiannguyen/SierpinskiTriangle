public int myColor = 0;
public int mycolor2;
public int triX = 200;
public int triY = 500;
public int z;
//public float inc = 1.0;
public void setup()
{
  size(600, 600, P3D);
  
}
public void draw()
{
  background(200);
  lights();
  pushMatrix();
  //translate(mouseX, mouseY);
  translate(mouseX, mouseY, z);
  rotateY(0.01);
  rotateX(0.01);
  noStroke();
  //triangle(100, 100, 200, 200, 100, 150);
  sierpinski(triX, triY, 200, myColor, mycolor2);
  //sierpinski(triX, triY, 20, myColor, mycolor2);
  //z++;
  popMatrix();
  //inc += 0.01;
 
}

public void mouseDragged(){
  triX = mouseX;
  triY = mouseY;
  redraw();
  
}


public void mousePressed()//optional
{
  
  myColor = color((int)(Math.random()*256), //red
     (int)(Math.random()*256), //green
     (int)(Math.random()*256));
  mycolor2 = color((int)(Math.random()*256), //red
     (int)(Math.random()*256), //green
     (int)(Math.random()*256));
    triX = mouseX;
  triY = mouseY;
  redraw();
}



public void keyPressed(){ //clears screan of repeating triangles
  if(key == 'c' || key == 'C'){
    background(200);
    //sierpinski(100, -270, 200, myColor, mycolor2);
  }
  else if(key == 'b' || key == 'B'){ //r = reset?
    z -= 50;
  }
  else if(key == 'f' || key == 'F'){ //r = reset?
    z += 50;
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
    beginShape();
    vertex(x, y, 0);  //left corner
    vertex(x+len/2, y-len, 25); //top middle
    vertex(x + len, y, 0); //right bottom
    vertex(x, y, 0); //back to left
    vertex(x+len/2, y-len, 50); //back middle
    vertex(x+len/2, y-len, 25); //top middle
    vertex(x + len, y, 0); //right bottom
    vertex(x+len/2, y-len, 50); //back middle
    vertex(x, y, 0);  //left corner
    vertex(x+len/2, y-len, 50); //back middle
    vertex(x + len, y, 0); //right bottom
   endShape();
    
    //triangle(x, y, (x + len/2), (y - len), (x + len), y);
    }
   else{
    
    fill(thecolor2);
    sierpinski(x, y, len/2, thecolor, thecolor2);
    sierpinski(x + len/2, y, len/2, thecolor, thecolor2);
    fill(thecolor);
    sierpinski(x + len/4, y - len/2, len/2, thecolor, thecolor2);

   }


}
