boolean devMode = true;
boolean sketchFullScreen() {
  return ! devMode;
}

PImage cloud, leaves;

void setup ()
{

  if (devMode)
  {
    size(800, 600);
  } else
  {
    size(displayWidth, displayHeight);
  }
  
  frameRate(30);
  cloud = loadImage("clouds.png");
  leaves= loadImage("leaves.png");
  
  mainmenu = new MainMenu();
  choicearrow = new ChoiceArrow();
  gamelevel = new GameLevel();
  player = new Player();

}

MainMenu mainmenu;
ChoiceArrow choicearrow;
GameLevel gamelevel;
Player player;




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
    player.move();
    player.display();
    player.keyReleased();
  }
}
