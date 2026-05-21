class DungeonMap {
  int columns = 50, rows = 30; //Formerlly 40 columns and 25 rows
  int[][] DungeonMap = new int[columns][rows];
  //
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
}
