//Main Menu screen
class MainMenu
{
  String start, p, rules,two;
  float pieceheight, halfheight, twopostion, rulespostion;
  
  MainMenu()
  {
    start = "Main Menu";
    p = "Start Game";
    rules = "Game Rules";
    
    pieceheight = height/6;
    halfheight = height/2;
    twopostion = halfheight + pieceheight;
    rulespostion = halfheight + pieceheight + pieceheight;

  }
  
  void display()
  {
    background(0);
    textAlign(CENTER);
    textSize(width/10);
    fill(255, 0, 0);
    text(start, width/2, height/7);
    
    textSize(width/14);
    text("Not the BEES!! NOT THE BEES", width/2, height/2-height/6);
    
    textSize(width/14);
    text("Nicholas Cage Edition!", width/2, height/2);

    fill(255, 242, 0);
    textSize(width/20);
    text(p, width/2, twopostion);

    textSize(width/20);
    text(rules, width/2, rulespostion);
    
  }
  
}
