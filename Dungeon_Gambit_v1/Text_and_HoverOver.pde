float TitleFontSize;
float[] TextDIVWidth = new float[7];
float[] TextDIVHeight = new float[7];
float[] InitialFontSizes = new float[TextDIVHeight.length];
float[] FontSizes = new float[TextDIVHeight.length];
String[] DungeonText = new String[7];
void TextSetup1() {
  //
  TitleFontSize = ShorterSide;
  TitleFont = createFont("Times New Roman Bold", TitleFontSize);
  //
  stringVarsEntry();
}
void stringVarsEntry() {
  DungeonText[0] = "Health: 100/100";
  DungeonText[1] = "Armor Class:";
  DungeonText[2] = "18";
  DungeonText[3] = "Weapon: Traitblade";
  DungeonText[4] = "2d6+5";
  DungeonText[5] = "Bonus to hit:";
  DungeonText[6] = "+5";
}
void TextSetup2() {
  TitleFontSize = ShorterSide;
  for (int i=0; i<TextDIVHeight.length; i++) {
    if (TitleFontSize > TextDIVHeight[i]) TitleFontSize = TextDIVHeight[i];
  }
  float TimesNewRomanBoldAspectRatio = 0.97;
  TitleFontSize = TitleFontSize * TimesNewRomanBoldAspectRatio;
  //
  for (int i = 0; i<TextDIVHeight.length; i++) {
    float TemporaryFontSize = TextDIVHeight[i];
    textFont(TitleFont, TemporaryFontSize);
    while (textWidth(DungeonText[i]) > TextDIVWidth[i]) {
      TemporaryFontSize *= 0.99;
      if (TemporaryFontSize < 8) {
        TemporaryFontSize = 8;
        break;
      }
      textFont(TitleFont, TemporaryFontSize);    
    }
    if (TemporaryFontSize < 8) TemporaryFontSize = 8;
    FontSizes[i] = TemporaryFontSize;
    textFont(TitleFont, TemporaryFontSize);
  }
}
  void Dungeon_Gambit_v1_HoverOver () {
  color hoverOverColor=color(255, 255, 255, 64);
}
