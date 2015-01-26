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
    fill(0,255,0);
    rect(x,y,x2,y2); 
  }
  
  
}
