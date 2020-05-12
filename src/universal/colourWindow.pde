GWindow colourWindow;
int _swidth, _sheight;
PGraphics spectrumImg;
void renderSpectrum() {
  spectrumImg = createGraphics(512, 306);
  spectrumImg.beginDraw();
  int count=0;
  spectrumImg.colorMode(HSB,spectrumImg.height-50,round(spectrumImg.width/2),round(spectrumImg.width/2));
  for(int y=0;y<=spectrumImg.height-50;y++) {
    for(int x=0;x<=round(spectrumImg.width/2);x++) {
      spectrumImg.stroke(y,round(spectrumImg.width/2),x);
      spectrumImg.point(x,y);
      count++;
      println("Pass 1: "+count+" pixels rendered");
    }
  }
  count=0;
  for(int y=0;y<=spectrumImg.height-50;y++) {
    for(int x=0;x<=round(spectrumImg.width/2);x++) {
      spectrumImg.stroke(y,x,round(spectrumImg.width/2));
      spectrumImg.point(round(spectrumImg.width/2)-x+257,y);
      count++;
      println("Pass 2: "+count+" pixels rendered");
    }
  }
  count=0;
  for(int y=0;y<=50;y++) {
    for(int x=0;x<=spectrumImg.width;x++) {
      spectrumImg.stroke(spectrumImg.height-50,0,floor(x/2));
      spectrumImg.point(x,y+spectrumImg.height-50);
      count++;
      println("Pass 3: "+count+" pixels rendered");
    }
  }
  spectrumImg.endDraw();
  println("Finished generating colour pallete");
}
public void spectrumSetup(PApplet app, GWinData data) {
  app.noSmooth();
  app.cursor(cursorDropper,4,4);
  app.frame.setResizable(true);
  app.frameRate(0);
}
public void spectrumDropper(PApplet app, GWinData data, MouseEvent mouseEvent) {
  if (mouseEvent.getAction()==MouseEvent.PRESS) {
    c=app.get(app.mouseX,app.mouseY);
  }
}
public void spectrumDraw(PApplet app, GWinData data) {
  app.image(spectrumImg,0,0,app.width,app.height);
}
void spectrumInit() {
  renderSpectrum();
  colourWindow = GWindow.getWindow(this, "Colour palette", 100, 50, 512, 306, JAVA2D);
  colourWindow.setActionOnClose(G4P.KEEP_OPEN);
  colourWindow.setAlwaysOnTop(true);
  colourWindow.addPreHandler(this, "spectrumSetup");
  colourWindow.addDrawHandler(this, "spectrumDraw");
  colourWindow.addMouseHandler(this, "spectrumDropper");
}