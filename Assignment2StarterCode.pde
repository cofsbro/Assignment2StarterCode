boolean devMode = true;
boolean sketchFullScreen() {
  return ! devMode;
}

void setup ()
{

  if (devMode)
  {
    size(800, 600);
  } else
  {
    size(displayWidth, displayHeight);
  }
  
  mainmenu = new MainMenu();
  choicearrow = new ChoiceArrow();
  gamelevel = new GameLevel();


}

MainMenu mainmenu;
ChoiceArrow choicearrow;
GameLevel gamelevel;





int layer = 1;

void draw()
{ 
  if (layer == 1)
  {
    mainmenu.display();
    choicearrow.move();
    choicearrow.display();
  }
  
  if (layer == 2)
  {
    gamelevel.display();
  }
}
