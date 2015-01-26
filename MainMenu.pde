class MainMenu
{
  String start, p, rules;
  float pieceheight, halfheight, twopostion, rulespostion;
  
  MainMenu()
  {
    start = "Main Menu";
    p = "Single Player";
    rules = "Game Rules";
    
    pieceheight = height/6;
    halfheight = height/2;
    twopostion = halfheight + pieceheight;
    rulespostion = halfheight + pieceheight + pieceheight;

  }
  
  void display()
  {
    background(255);
    textSize(width/10);
    fill(255, 0, 0);
    text(start, width/4, height/7);

    textSize(width/20);
    fill(0, 0, 255);
    text(p, width/2.9, twopostion);

    textSize(width/20);
    fill(0, 0, 255);
    text(rules, width/2.8, rulespostion);
    
  }
  
}
