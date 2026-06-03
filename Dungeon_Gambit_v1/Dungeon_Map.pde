class DungeonMap {
  int columns = 50, rows = 30; //Formerlly 40 columns and 25 rows
  int[][] DungeonMap = new int[columns][rows];
  //
  int NumberOfActionLogDIVs = 27; //All Action Log Components
  float[][] ActionLogDivRatios = new float[NumberOfActionLogDIVs][4]; //Store ratios (Rectangles)
  float[] ActionLogDivs = new float[NumberOfActionLogDIVs*4]; //Action Log Position and Size of Components
  int NumberOfPlayerStatDIVs = 9; //All Player Stat Components
  float[][] PlayerStatDivRatios = new float[NumberOfPlayerStatDIVs][4]; //Store ratios (Rectangles)
  float[] PlayerStatDivs = new float[NumberOfPlayerStatDIVs*4]; //Player Stat Position and Size of Components
  //
void DungeonMapDivs() {
  //
  ActionLogDivRatios[0] = new float[]{0.0, 0.0, 6.0/25, 1.0/26}; //Action Log Section 1
  ActionLogDivRatios[1] = new float[]{0.0, 1.0/26, 6.0/25, 1.0/26}; //Action Log Section 2
  ActionLogDivRatios[2] = new float[]{0.0, 1.0/13, 6.0/25, 1.0/26}; //Action Log Section 3
  ActionLogDivRatios[3] = new float[]{0.0, 3.0/26, 6.0/25, 1.0/26}; //Action Log Section 4
  ActionLogDivRatios[4] = new float[]{0.0, 2.0/13, 6.0/25, 1.0/26}; //Action Log Section 5
  ActionLogDivRatios[5] = new float[]{0.0, 5.0/26, 6.0/25, 1.0/26}; //Action Log Section 6
  ActionLogDivRatios[6] = new float[]{0.0, 3.0/13, 6.0/25, 1.0/26}; //Action Log Section 7
  ActionLogDivRatios[7] = new float[]{0.0, 7.0/26, 6.0/25, 1.0/26}; //Action Log Section 8
  ActionLogDivRatios[8] = new float[]{0.0, 4.0/13, 6.0/25, 1.0/26}; //Action Log Section 9
  ActionLogDivRatios[9] = new float[]{0.0, 9.0/26, 6.0/25, 1.0/26}; //Action Log Section 10
  ActionLogDivRatios[10] = new float[]{0.0, 5.0/13, 6.0/25, 1.0/26}; //Action Log Section 11
  ActionLogDivRatios[11] = new float[]{0.0, 11.0/26, 6.0/25, 1.0/26}; //Action Log Section 12
  ActionLogDivRatios[12] = new float[]{0.0, 6.0/13, 6.0/25, 1.0/26}; //Action Log Section 13
  ActionLogDivRatios[13] = new float[]{0.0, 13.0/26, 6.0/25, 1.0/26}; //Action Log Section 14
  ActionLogDivRatios[14] = new float[]{0.0, 7.0/13, 6.0/25, 1.0/26}; //Action Log Section 15
  ActionLogDivRatios[15] = new float[]{0.0, 15.0/26, 6.0/25, 1.0/26}; //Action Log Section 16
  ActionLogDivRatios[16] = new float[]{0.0, 8.0/13, 6.0/25, 1.0/26}; //Action Log Section 17
  ActionLogDivRatios[17] = new float[]{0.0, 17.0/26, 6.0/25, 1.0/26}; //Action Log Section 18
  ActionLogDivRatios[18] = new float[]{0.0, 9.0/13, 6.0/25, 1.0/26}; //Action Log Section 19
  ActionLogDivRatios[19] = new float[]{0.0, 19.0/26, 6.0/25, 1.0/26}; //Action Log Section 20
  ActionLogDivRatios[20] = new float[]{0.0, 10.0/13, 6.0/25, 1.0/26}; //Action Log Section 21
  ActionLogDivRatios[21] = new float[]{0.0, 21.0/26, 6.0/25, 1.0/26}; //Action Log Section 22
  ActionLogDivRatios[22] = new float[]{0.0, 11.0/13, 6.0/25, 1.0/26}; //Action Log Section 23
  ActionLogDivRatios[23] = new float[]{0.0, 23.0/26, 6.0/25, 1.0/26}; //Action Log Section 24
  ActionLogDivRatios[24] = new float[]{0.0, 12.0/13, 6.0/25, 1.0/26}; //Action Log Section 25
  ActionLogDivRatios[25] = new float[]{0.0, 23.0/26, 6.0/25, 1.0/26}; //Action Log Section 26
  ActionLogDivRatios[26] = new float[]{0.0, 25.0/26, 6.0/25, 1.0/26}; //Action Log Section 27
  //
  PlayerStatDivRatios[0] = new float[]{6.0/25, 0.0/26, 19.0/25, 3.0/26}; //Player Stat Backplate
  PlayerStatDivRatios[1] = new float[]{7.0/25, 3.0/52, 4.0/25, 1.0/26}; //Player Stat: Health Bar
  PlayerStatDivRatios[2] = new float[]{8.0/25, 1.0/52, 2.0/25, 1.0/26}; //Player Stat: Health (Label)
  PlayerStatDivRatios[3] = new float[]{1.0/2, 0.0, 2.0/13, 1.0/26}; //Player Stat: Armor Class (Label)
  PlayerStatDivRatios[4] = new float[]{27.0/50, 1.0/26, 1.0/13, 1.0/13}; //Player Stat: Armor Class
  PlayerStatDivRatios[5] = new float[]{7.0/10, 0.0, 3.0/26, 1.0/26}; //Player Stat: Equipped Weapon (Label)
  PlayerStatDivRatios[6] = new float[]{7.0/10, 1.0/26, 3.0/26, 1.0/13}; //Player Stat: Equipped Weapon
  PlayerStatDivRatios[7] = new float[]{23.0/26, 0.0/26, 3.0/26, 1.0/26}; //Player Stat: Bonus to Hit Chance (Label)
  PlayerStatDivRatios[8] = new float[]{23.0/26, 1.0/26, 3.0/26, 1.0/13}; //Player Stat: Bonus to Hit Chance
  /*
  */
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
  for (int i = 0; i < NumberOfPlayerStatDIVs; i++) {
    int baseIndex = i*4;
    PlayerStatDivs[baseIndex] = appWidth*PlayerStatDivRatios[i][0]; //X position
    PlayerStatDivs[baseIndex+1] = appHeight*PlayerStatDivRatios[i][1]; //Y position
    PlayerStatDivs[baseIndex+2] = appWidth*PlayerStatDivRatios[i][2]; //Width
    PlayerStatDivs[baseIndex+3] = appHeight*PlayerStatDivRatios[i][3]; //Height
  }
  for (int j = 2; j < NumberOfPlayerStatDIVs; j++) {
  for (int t = 0; t < 7; t++) {
    int baseIndex2 = j*4;
    TextDIVWidth[t] = PlayerStatDivs[baseIndex2+2];
    TextDIVHeight[t] = PlayerStatDivs[baseIndex2+3];
    }
  }
}
void setup() {
  //
  // Fill with walls
  for (int i = 0; i < columns; i++) {
    for (int j = 0; j < rows; j++) {
      DungeonMap[i][j] = 0; //0 = wall
    }
  }
  //Generate rooms and create hallways to connect them.
  ArrayList<PVector> roomCenters = new ArrayList<PVector>();
  for (int r = 0; r < 14; r++) {
    int RoomWidth = int(random(3, 8));
    int RoomHeight = int(random(3, 8));
    int x = int(random(12, columns-RoomWidth-1));
    int y = int(random(5, rows-RoomHeight-1));
  for (int i = x; i < x+RoomWidth; i++) {
  for (int j = y; j < y+RoomHeight; j++) {
    DungeonMap[i][j] = 1; //1 = floor
    }
  }
  int RoomCenterX = x+RoomWidth/2;
  int RoomCenterY = y+RoomHeight/2;
  roomCenters.add(new PVector(RoomCenterX, RoomCenterY));
  }
  for (int i = 0; i < roomCenters.size()-1; i++) {
    PVector a = roomCenters.get(i);
    PVector b = roomCenters.get(i+1);
  for (int x = min((int)a.x, (int)b.x); x <= max((int)a.x, (int)b.x); x++) {
    DungeonMap[x][(int)a.y] = 1;
  }
  for (int y = min((int)a.y, (int)b.y); y <= max((int)a.y, (int)b.y); y++) {
    DungeonMap[(int)b.x][y] = 1;
  }
}
//*/
}
void draw() {
  //
  shapeMode(CENTER);
  //
  //Grid Tile Size
  stroke(Black);
  float panelWidth = width*6.0/25;
  float mapWidth = width-panelWidth;
  float cellWidth = mapWidth/(columns-12);
  float panelHeight = height*2.0/26;
  float mapHeight = height-panelHeight;
  float cellHeight = mapHeight/(rows);
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
  noStroke();
  fill(Gray);
  for (int i = 0; i < NumberOfActionLogDIVs; i++) {
    int baseIndex = i*4;
    rect(ActionLogDivs[baseIndex], ActionLogDivs[baseIndex+1], ActionLogDivs[baseIndex+2], ActionLogDivs[baseIndex+3]);
  }
  stroke(Black);
  strokeWeight(3);
  for (int i = 0; i < NumberOfPlayerStatDIVs; i++) {
  if (i == 1) {
  fill(Health);
  } else {
  fill(Gray);
  }
    int baseIndex = i*4;
    rect(PlayerStatDivs[baseIndex], PlayerStatDivs[baseIndex+1], PlayerStatDivs[baseIndex+2], PlayerStatDivs[baseIndex+3]);
  }
  for (int j = 0; j < 7; j++) {
  int baseIndex2 = (j+2)*4;
  textAlign(CENTER, CENTER);
  fill(Black);
  textFont(TitleFont, FontSizes[j]);
  text(DungeonText[j], PlayerStatDivs[baseIndex2], PlayerStatDivs[baseIndex2+1], PlayerStatDivs[baseIndex2+2], PlayerStatDivs[baseIndex2+3]);
  }
  stroke(Black);
  strokeWeight(1);
  }
}
