//Classes
DungeonMap dungeonMap;
//
float xSampleTextv1, ySampleTextv1;
float xSampleTextv2, ySampleTextv2;
PFont TitleFont;
color ResetDefaultInk=#FFFFFF;
color Black=#000000;
color Teleport=#0AC8FF;
int appWidth, appHeight;
int size;
int ShorterSide;
//
void setup() {
  //
  size(1200, 800);
  appWidth = width;
  appHeight = height;
  ShorterSide = (appWidth >= appHeight) ? appHeight : appWidth;
  //
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
  dungeonMap = new DungeonMap();
  dungeonMap.setup();
  //
} //end setup
void draw() {
  background(50);
  dungeonMap.draw();
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
