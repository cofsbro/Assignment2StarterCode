class ChoiceArrow
{
  float x, y;
  float w, h;
  float gy,ry;
  
  ChoiceArrow()
  {
    x = width/3;
    y = height/2.1 + height/6.1;
    h = 40;
    w = 40;
    gy = height/2.1 + height/6.1;
    ry = height/2.1 + height/6.1 + height/6.1;

  }
  
  void display()
  {
    float halfwidth = w/2;
    float halfheight = h/2;
    
    
    triangle(x,y, x - halfwidth, y + halfheight, x - halfwidth, y - halfheight);
  }
  
  void move()
  {
    if(keyPressed)
    {
      if(keyCode == UP && y == ry)
      { 
        y = height/2.1 + height/6.1;
      }
      
      if(keyCode == DOWN && y == gy)
      {
        y = height/2.1 + height/6.1 + height/6.1;   
      }
      
      if(key == 's' && y == gy || key == 'S' && y == gy)
      { 
        layer = 2;
      }
 
    }
    
  }
}
