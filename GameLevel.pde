//The main game level design.
class GameLevel
{
  float x, y, x2, y2, trunk, trunkwidth, trunkheight; 
  float leafheight, lx,cloudheight, gridheight,psx,psy;
  
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
    psx = width/2;
    psy = height - ((width/16)/1.5);
  }
  
  
  
  void display()
  {
    background(0,0,255);
    fill(60,160,0);
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
        
      }
    }
    
    if(millis()>=time)
    {
      time=millis()+1000;
      sec = sec-1;
      if(sec==0)
      {
        layer=4;
      }
    }
    
    image(bush,0,height/1.5,width,height/2);
    textAlign(CENTER);
    textSize(width/40);
    fill(255,0,0);
    text( player1+score,psx,psy);  
    
    textSize(width/20);
    fill(0);
    text("Time:"+sec,psx,(psy - (height/16)));
    
    stroke(0);
  }
  
  
}
