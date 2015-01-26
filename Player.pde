class Player
{
  float px, py, px2, py2;
  
  Player()
  {
    px = width/12;
    py = height/1.2;
    px2 = width/12;
    py2 = width/12;
  }
  
  void display()
  {
    fill(255,0,0);
    rect(px,py,px2,py2); 
  }
  
  void move()
  {
    if(keyPressed)
    {
      if(keyCode == UP)
        { 
          py = py - 1;
          px2 = px2 - 0.1;
          py2 = py2 - 0.1;
        }
        
        if(keyCode == DOWN)
        {
           py = py + 1;
          px2 = px2 + 0.1;
          py2 = py2 + 0.1; 
        }
        
        if(keyCode == LEFT)
        { 
          px = px - 1;
        }
        
        if(keyCode == RIGHT)
        {
           px = px + 1;
        }
    }
    
  }
  
  
}
