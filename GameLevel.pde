class GameLevel
{
  float x, y, x2, y2;
  
  GameLevel()
  {
    x = 0;
    y = height/1.8;
    x2 = width;
    y2 = height;

  }
  
  void display()
  {
    background(0,0,255);
    fill(0,102,0);
    rect(x,y,x2,y2); 
    
    for(int i = 0; i < 800; i+=100)
    {
      fill(102,51,0);
      rect(i,150,50,250);
      
      for(int j = 25; j < 800; j+=100)
      {
        fill(0,204,0);
        ellipse(j,150,50,50);
        ellipse(0,125,50,50);
        ellipse(50,125,50,50);
        ellipse(0,150,50,50);
        ellipse(25,100,50,50);
      }
      
    }
  }
  
  
}
