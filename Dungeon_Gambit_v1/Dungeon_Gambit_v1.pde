//Classes
//DungeonDivs dungeonDivs;
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
int columns = 50, rows = 31; //Formally 40 columns and 25 rows
int[][] DungeonMap = new int[columns][rows];
//
void setup() {
  //
  size(1200, 800);
  appWidth = width;
  appHeight = height;
  ShorterSide = (appWidth >= appHeight) ? appHeight : appWidth;
  //
  xSampleTextv1 = appWidth*2/5; ySampleTextv1 = appHeight*3/8;
  xSampleTextv2 = appWidth*4/9; ySampleTextv2 = appHeight*5/9;
  TextDIVWidth[0] = appWidth*1/5; TextDIVHeight[0] = appHeight*1/8;
  TextDIVWidth[1] = appWidth*1/9; TextDIVHeight[1] = appHeight*1/16;
  //
  //Fonts
  TitleFont = createFont("Times New Roman Bold", 55);
  //
  generateDungeon();
} //end setup
void draw() {
  background(50);
  drawDungeon();
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
void generateDungeon() {
  // Fill with walls
  for (int i = 0; i < columns; i++) {
    for (int j = 0; j < rows; j++) {
      DungeonMap[i][j] = 0; //0 = wall
    }
  }
  //Room Size Randomizer
  for (int r = 0; r < 12; r++) {
    int Width = int(random(6, 18));
    int Height = int(random(6, 18));
    int x = int(random(1, columns-Width-1));
    int y = int(random(1, rows-Height-1));
    for (int i = x; i < x+Width; i++) {
      for (int j = y; j < y+Height; j++) {
        DungeonMap[i][j] = 1; //1 = normal floor
      }
    }
  }
}
void drawDungeon() {
  //Grid Tile Size
  int cellWidth = width/columns;
  int cellHeight = height/rows;
  //Grid floor
  for (int i = 0; i < columns; i++) {
    for (int j = 0; j < rows; j++) {
      if (DungeonMap[i][j] == 0) {
        fill(Black);
      } else if (DungeonMap[i][j] == 1) {
        fill(ResetDefaultInk);
      }
      rect(i*cellWidth, j*cellHeight, cellWidth, cellHeight);
    }
  }
}
//end program
