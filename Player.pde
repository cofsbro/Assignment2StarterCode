class Player
{
  float px, py, px2, py2;
  float outerring, innerring, centerring;
  
  Player()
  {
    px = width/16;
    py = height/1.2;
    px2 = width/16;
    py2 = width/16;
    
    outerring = px;
    innerring = outerring/2;
    centerring = innerring/2;
    
  }
  
  void display()
  {
    PVector mouse = new PVector(mouseX,mouseY);
    stroke(255,0,0);
    noFill();
    
    ellipse(mouse.x,mouse.y,outerring,outerring);
    ellipse(mouse.x,mouse.y,innerring,innerring);
    
    fill(255,0,0);
    ellipse(mouse.x,mouse.y,centerring,centerring);
    rect(px,py,px2,py2); 
    
    stroke(0);
  }
  
  void keyPressed()
  {
  }
  
  void keyReleased()
  {
      
  }
}
    
    
 
