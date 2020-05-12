void androidSpectrum() {}
GWindow spectrumWindow;
boolean spectrumInitialized = false;
void spectrumSetup(PApplet app, GWinData data) {
  if (!(spectrumInitialized)) {
    app.noSmooth();
    app.frameRate(15);
    app.cursor(cursorDropper,4,4);
    app.frame.setResizable(true);
    app.image(spectrumImg,0,0,app.width,app.height);
    spectrumInitialized=false;
  }
}
public void spectrumDropper(PApplet app, GWinData data, MouseEvent mouseEvent) {
  if (mouseEvent.getAction()==MouseEvent.PRESS) {
    c=spectrumImg.get(app.mouseX,app.mouseY);
  }
}
public void spectrumDraw(PApplet app, GWinData data) {}
void spectrumInit() {
  generateSpectrum();
  spectrumWindow = GWindow.getWindow(this, "Colour palette", 100, 50, 512, 306, JAVA2D);
  spectrumWindow.setActionOnClose(G4P.KEEP_OPEN);
  spectrumWindow.setAlwaysOnTop(true);
  spectrumWindow.addPreHandler(this, "spectrumSetup");
  spectrumWindow.addDrawHandler(this, "spectrumDraw");
  spectrumWindow.addMouseHandler(this, "spectrumDropper");
}