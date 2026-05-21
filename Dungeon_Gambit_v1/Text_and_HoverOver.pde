float TitleFontSize;
float[] TextDIVWidth = new float[2];
float[] TextDIVHeight = new float[2];
float[] InitialFontSizes = new float[TextDIVHeight.length];
float[] FontSizes = new float[TextDIVHeight.length];
String[] SampleText = new String[2];
void TextSetup1() {
  //
  TitleFontSize = ShorterSide;
  TitleFont = createFont("Times New Roman Bold", TitleFontSize);
  //
  stringVarsEntry();
}
void stringVarsEntry() {
  SampleText[0] = "Sample text v1";
  SampleText[1] = "Sample text v2";
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
    while (textWidth(SampleText[i]) > TextDIVWidth[i]) {
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
  void Music_Program_CS20_HoverOver () {
  color hoverOverColor=color(255, 255, 255, 64);
}
//}
