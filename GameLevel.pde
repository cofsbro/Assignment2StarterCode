class GameLevel
{
  float x, y, x2, y2, trunk, trunkwidth, trunkheight; 
  float leafheight, lx,cloudheight, gridheight;
  
  GameLevel()
  {
    x = 0;
    y = height/1.8;
    x2 = width;
    y2 = height;
    trunk = height/4.5;
    trunkwidth = width/16;
    trunkheight = height/2.5;
    leafheight = height/6;
    lx = (width/16) * 3;
    cloudheight = (height/12)/2;
    gridheight = (height/1.2) + (width/16);

  }
  
  
  
  void display()
  {
    background(0,0,255);
    fill(0,102,0);
    rect(x,y,x2,y2); 
    
    for(float i = 0; i < width; i+=width/4)
    {
      stroke(0);
      fill(102,51,0);
      rect(i,trunk, trunkwidth,trunkheight);
      
      for(float j = i - trunkwidth ; j < width; j+=width/4)
      {
        
        noStroke();
        noFill();
        image(cloud,j,cloudheight,lx,trunkwidth);
        image(leaves,j,leafheight,lx,lx);
        
        /*stroke(0,204,0);
        fill(0,204,0);
        rect(j,leafheight,lx,lx);*/
      }
      
    }
    stroke(0);
  }
  
  
}
