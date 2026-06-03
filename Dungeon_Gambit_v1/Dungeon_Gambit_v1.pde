//Classes
DungeonMap dungeonMap;
PlayerInventory playerInventory;
//
float xSampleTextv1, ySampleTextv1;
float xSampleTextv2, ySampleTextv2;
PFont TitleFont;
color ResetDefaultInk=#FFFFFF;
color Black=#000000;
color Gray=#868686;
color Teleport=#0AC8FF;
int appWidth, appHeight;
int size;
int ShorterSide;
int PlayerMaximumHealth;
int PlayerCurrentHealth;
boolean InMainMenu = false;
boolean InInventory = false;
boolean MouseIsOver(float xVariable, float yVariable, float widthVariable, float heightVariable) {
  return mouseX>xVariable && mouseX<xVariable+widthVariable && mouseY>yVariable && mouseY<yVariable+heightVariable;
}
//
void setup() {
  //
  size(1200, 800);
  appWidth = width;
  appHeight = height;
  ShorterSide = (appWidth >= appHeight)?appHeight:appWidth;
  //
  dungeonMap = new DungeonMap();
  dungeonMap.DungeonMapDivs();
  playerInventory = new PlayerInventory();
  if (!InMainMenu) {
    if (!InInventory) {
      dungeonMap.setup();
    } else if (InInventory) {
      playerInventory.setup();
    }
  }
  /*
  xSampleTextv1 = appWidth*2/5; ySampleTextv1 = appHeight*3/8;
  xSampleTextv2 = appWidth*4/9; ySampleTextv2 = appHeight*5/9;
  TextDIVWidth[0] = appWidth*1/5; TextDIVHeight[0] = appHeight*1/8;
  TextDIVWidth[1] = appWidth*1/9; TextDIVHeight[1] = appHeight*1/16;
  */
  //
  //Fonts
  TitleFont = createFont("Times New Roman Bold", 55);
  //
  //
} //end setup
void draw() {
  background(50);
  //
  if (!InMainMenu) {
    if (!InInventory) {
      dungeonMap.draw();
    } else if (InInventory) {
      playerInventory.draw();
    }
  }
  //
  /*
  TextSetup1();
  TextSetup2();
  //
  rect(xSampleTextv1, ySampleTextv1, TextDIVWidth[0], TextDIVHeight[0]);
  rect(xSampleTextv2, ySampleTextv2, TextDIVWidth[1], TextDIVHeight[1]);
  //
  textAlign(CENTER, CENTER);
  fill(Black);
  textFont(TitleFont, FontSizes[0]);
  text(SampleText[0], xSampleTextv1, ySampleTextv1, TextDIVWidth[0], TextDIVHeight[0]);
  textFont(TitleFont, FontSizes[1]);
  text(SampleText[1], xSampleTextv2, ySampleTextv2, TextDIVWidth[1], TextDIVHeight[1]);
  fill(ResetDefaultInk);
  */
  //
} //end draw
void keyPressed() {
  //
}
void keyReleased() {
  //
}
void mousePressed() {
  //
}
void mouseReleased() {
  //
}
//end program
