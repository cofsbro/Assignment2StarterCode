class Player
{
  float px, py, px2, py2;
  
  Player()
  {
    px = width/16;
    py = height/1.2;
    px2 = width/16;
    py2 = width/16;
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
          px2 = px2 - 0.5;
          py2 = py2 - 0.5;
          print(py);
        }
        
        if(keyCode == DOWN)
        {
           py = py + 1;
          px2 = px2 + 0.5;
          py2 = py2 + 0.5;
        }
        
        if(keyCode == LEFT)
        { 
          px = px - 4;
        }
        
        if(keyCode == RIGHT)
        {
           px = px + 4;
        }
        
        if(key == ' ')
        {
           py = py - 5;
           
        }
        
    }
    
  }
  
  void keyReleased()
    {

      if (key == ' ')
      {
        py = py - 5;
      }
    }
    
    
  
  
}
