//Classes
DungeonMap dungeonMap;
PlayerInventory playerInventory;
//
PFont TitleFont;
color ResetDefaultInk=#FFFFFF;
color Black=#000000;
color Gray=#868686;
color Teleport=#0AC8FF;
color Health=#D10000;
color Player=#0DB92E;
int appWidth, appHeight;
int size;
int ShorterSide;
int PlayerMaximumHealth;
int PlayerCurrentHealth;
boolean InMainMenu = false;
boolean InInventory = false;
boolean PlayerPlaced = false;
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
  //
  //Fonts
  TitleFont = createFont("Times New Roman Bold", 55);
  //
  //
} //end setup
void draw() {
  background(50);
  //
  TextSetup1();
  TextSetup2();
  //
  if (!InMainMenu) {
    if (!InInventory) {
      dungeonMap.draw();
    } else if (InInventory) {
      playerInventory.draw();
    }
  }
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
