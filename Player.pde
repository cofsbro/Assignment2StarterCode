// Player
class Player
{
  float px;
  float outerring, innerring, centerring;
  
  Player()
  {
    px = width/16;    
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
    ellipse(mouse.x,mouse.y,centerring,centerring);
        
    stroke(0);

  }
}
 
