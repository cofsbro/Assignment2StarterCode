boolean devMode = false;
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

}



int layer = 1;
String start = "Main Menu";
String p = "Single Player";
String two = "Two Player";
String rules = "Game Rules";

void draw()
{ 
  if (layer == 1)
  {
    float pieceheight = height/6;
    float halfheight = height/2;
    float twopostion = halfheight + pieceheight;
    float rulespostion = halfheight + pieceheight + pieceheight;


    background(0);
    textSize(width/10);
    fill(255, 0, 0);
    text(start, width/4, height/7);

    textSize(width/20);
    fill(0, 0, 255);
    text(p, width/2.9, halfheight);

    textSize(width/20);
    fill(0, 0, 255);
    text(two, width/2.7, twopostion);

    textSize(width/20);
    fill(0, 0, 255);
    text(rules, width/2.8, rulespostion);
  }
}

