GWindow colourWindow;
public void spectrumSetup(PApplet app, GWinData data) {
  app.cursor(cursorDropper,4,4);
  app.frame.setResizable(true);
  app.frameRate(10);
}
public void spectrumDropper(PApplet app, GWinData data, MouseEvent mouseEvent) {
  if (mouseEvent.getAction()==MouseEvent.PRESS) {
    c=app.get(app.mouseX,app.mouseY);
  }
}
public void spectrumDraw(PApplet app, GWinData data) {
  app.image(spectrumImage,0,0,app.width,app.height);
}
void spectrumInit() {
  colourWindow = GWindow.getWindow(this, "Colour palette", 100, 50, spectrumImage.width, spectrumImage.height, JAVA2D);
  colourWindow.setActionOnClose(G4P.KEEP_OPEN);
  colourWindow.setAlwaysOnTop(true);
  colourWindow.addPreHandler(this, "spectrumSetup");
  colourWindow.addDrawHandler(this, "spectrumDraw");
  colourWindow.addMouseHandler(this, "spectrumDropper");
}