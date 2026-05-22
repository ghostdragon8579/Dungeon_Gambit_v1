class DungeonMap {
  int columns = 50, rows = 31; //Formerlly 40 columns and 25 rows
  int[][] DungeonMap = new int[columns][rows];
  //
  int NumberOfActionLogDIVs = 26; //All Music Panel Components
  float[][] ActionLogDivRatios = new float[NumberOfActionLogDIVs][4]; //Store ratios (Rectangles)
  float[] ActionLogDivs = new float [NumberOfActionLogDIVs*4]; //Music Panel Position and Size of components
  //
void DungeonMapDivs() {
  //ActionLogDivRatios[0] = new float[]{0.0, 0.0, 1.0/1, 1.0/1}; //Background Component
  //ActionLogDivRatios[1] = new float[]{2.0/27, 1.0/10, 23.0/27, 4.0/5}; //Music Panel Component
  //
  CalculateDIVs();
  //
}
void CalculateDIVs() {
  for (int i = 0; i < NumberOfActionLogDIVs; i++) {
    int baseIndex = i*4;
    ActionLogDivs[baseIndex] = appWidth*ActionLogDivRatios[i][0]; //X position
    ActionLogDivs[baseIndex+1] = appHeight*ActionLogDivRatios[i][1]; //Y position
    ActionLogDivs[baseIndex+2] = appWidth*ActionLogDivRatios[i][2]; //Width
    ActionLogDivs[baseIndex+3] = appHeight*ActionLogDivRatios[i][3]; //Height
  }
}
void setup() {
  // Fill with walls
  for (int i = 0; i < columns; i++) {
    for (int j = 0; j < rows; j++) {
      DungeonMap[i][j] = 0; //0 = wall
    }
  }
  //Room Size Randomizer
  for (int r = 0; r < 12; r++) {
    int RoomWidth = int(random(6, 18));
    int RoomHeight = int(random(6, 18));
    int x = int(random(1, columns-RoomWidth-1));
    int y = int(random(1, rows-RoomHeight-1));
    for (int i = x; i < x+RoomWidth; i++) {
      for (int j = y; j < y+RoomHeight; j++) {
        DungeonMap[i][j] = 1; //1 = normal floor
      }
    }
  }
}
void draw() {
  //Grid Tile Size
  int cellWidth = width/columns;
  int cellHeight = height/rows;
  //Grid floor
  for (int i = 12; i < columns; i++) {
    for (int j = 0; j < rows; j++) {
      if (DungeonMap[i][j] == 0) {
        fill(Black);
      } else if (DungeonMap[i][j] == 1) {
        fill(ResetDefaultInk);
      } else if (DungeonMap[i][j] == 2) {
        fill(Teleport);
      }
      rect(i*cellWidth, j*cellHeight, cellWidth, cellHeight);
    }
  }
}
}
