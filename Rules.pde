// Rule
class Rules
{
  String wordone,wordtwo,wordthree,wordfour,wordfive,wordsix;
  float centerx,oney,twoy,threey,foury,fivey;
  float backx,backy;
  
  Rules()
  {             
    wordone =   "The aim of the game is to shoot within the time limit to get the highest score!";
    wordtwo =   "To move Player1 uses the mouse and its cursor to shoot!";
    wordthree =  "Now follow the quote of Jurrasic park:";
    wordfive =  "SHOOT HER! SHOOT HHHHEEEEERR!!!";
    
    centerx = width/2;
    oney = height/6;
    twoy = (height/6)*2;
    threey = (height/6)*3;
    foury = (height/6)*4;
    fivey = (height/6)*5;
    
    backx = width/2 + (width/8);
    backy = height/2 - (width/8);
    

  }
  
  void display()
  {
    background(0);
    textSize(height/30);
    textAlign(CENTER);
    fill(255,242,0);
    text(wordone, centerx,oney);
    text(wordtwo, centerx,twoy);
    text(wordthree, centerx,threey);
    textSize(width/20);
    text(wordfive, centerx,fivey);
    
    if(keyPressed)
    {
      if (key == BACKSPACE) 
       {
         layer=1;
       }
    }
    
  }
}
