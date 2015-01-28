//The Bees that are attacking you.
class Enemies
{
  color colour;
  PVector position;
  float enemx,enemy,fullsize, startsize,contact;
  float screneheight, screnewidth, ptcon, twox,twoy,innerring, centerring;
  
  Enemies()
  {
    colour = color(255,0,0);
    fullsize = width/16;
    screneheight = height - (height/6) - (height/30) - fullsize;
    screnewidth = width - ((fullsize)*2);
    enemx = random(fullsize, screnewidth);
    enemy = random(fullsize, screneheight);
    startsize = fullsize/5;
    innerring = startsize/2;
    centerring = innerring/2;
  }
  
  void display ()
  {
    
    contact = dist(enemx,enemy,mouseX,mouseY);
     
     if (contact < startsize) 
     {
       
       if (mousePressed) 
       {
         gun.play();
         gun.rewind();
         enemx = width+500;
         enemy = height+500;
         score++;         
       }
       
     }
     
     fill(255,242,0);
     ellipse(enemx,enemy,startsize,startsize);
     fill(0);
     ellipse(enemx,enemy,innerring,innerring);
     fill(255,242,0);
     ellipse(enemx,enemy,centerring,centerring);
     fill(0);
     ellipse(enemx,enemy,centerring/2,centerring/2);
     
     if(startsize <= fullsize)
     {
       startsize = startsize + 2;
     }
     if(innerring <= ((startsize)/1.2))
     {
       innerring = innerring + 2;
     }
     
     if(centerring <= ((startsize)/2))
     {
       centerring = centerring + 2;
     }
     
  }
  
}
