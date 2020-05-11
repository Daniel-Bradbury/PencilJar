GWindow colourWindow;
public void colourWindowSetup(PApplet app, GWinData data) {
  app.image(loadImage("colourspectrum.jpg"),0,0);
  app.cursor(cursorDropper,4,4);
}
public void spectrumDropper(PApplet app, GWinData data, MouseEvent mouseEvent) {
  if (mouseEvent.getAction()==MouseEvent.PRESS) {
    c=app.get(app.mouseX,app.mouseY);
  }
}
void colourWindowSetup() {
  colourWindow = GWindow.getWindow(this, "Colour palette", 100, 50, 600, 388, JAVA2D);
  colourWindow.setActionOnClose(G4P.KEEP_OPEN);
  colourWindow.setAlwaysOnTop(true);
  colourWindow.addPreHandler(this, "colourWindowSetup");
  colourWindow.addMouseHandler(this, "spectrumDropper");
}