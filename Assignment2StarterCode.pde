import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

boolean devMode = false;
boolean sketchFullScreen() {
  return ! devMode;
}

AudioPlayer gun,bee;
Minim minim;


PImage cloud, leaves, bush,bees;

int number = 3;
ArrayList enemies;

void setup ()
{
  enemies = new ArrayList();
  if (devMode)
  {
    size(800, 600);
  } 
  
  else
  {
    size(displayWidth, displayHeight);
  }
  
  
  frameRate(60);
  
  cloud = loadImage("clouds.png");
  leaves = loadImage("leaves.png");
  bush = loadImage("bush.png");
  bees = loadImage("Bees.png");
  
  mainmenu = new MainMenu();
  rules = new Rules();
  choicearrow = new ChoiceArrow();
  gamelevel = new GameLevel();
  player = new Player();
  
  minim = new Minim(this);
  gun = minim.loadFile("gun.mp3");
  bee = minim.loadFile("bee.mp3");
  
  Highscore();
  newhighscore();

}

MainMenu mainmenu;
Rules rules;
ChoiceArrow choicearrow;
GameLevel gamelevel;
Player player;

String line;
String player1 = "Player1 Score is:";
int layer = 1;
int score = 0;
int[] oldhighscore;
int sec = 60;
int time = millis()+1000;
int enemnum = 20;

void Highscore()
{
  String[] hBuffer = loadStrings("highscore.txt");
  
  oldhighscore = int(hBuffer);
}

void newhighscore()
{
  if(score>oldhighscore[0])
  {
    String[] hBuffer = new String[1];
    hBuffer[0] = str(score);
    
    saveStrings("highscore.txt",hBuffer);
  }
}

void draw()
{ 
    if (layer == 1)
    {
      mainmenu.display();
      choicearrow.display();
      choicearrow.move();
    } 
  
    if(layer == 2)
    {
      bee.play();
      
      if(enemies.size()==0)
      {
        for(int i = 0; i < number; i ++ )
        {
          enemies.add(new Enemies());
        }
      }
      gamelevel.display();
      player.display();
    
      for(int i = 0; i < enemies.size(); i++)
      {
        Enemies e = (Enemies) enemies.get(i);
        e.display();
        
        if(e.startsize == e.fullsize)
        {
          enemies.remove(i);
        }
      }
      
     if(score==enemnum)
     {
       number++;
       enemnum = enemnum +10;
     }
      
    }

  
    if(layer == 3)
    {
      rules.display();
    }
    
    if(layer == 4)
    {
      background(0);
      fill(255,242,0);
      textAlign(CENTER);
      newhighscore();
      text("Your Score: "+score, width/2, height/2);
      text("The High Score is: "+oldhighscore[0], width/2, ((height/2)-(height/4)));
      
      if(keyPressed)
      {
        if (key == BACKSPACE) 
         {
           layer=1;
         }
      }
    }
  
}
