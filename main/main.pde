import g4p_controls.*;

boolean click, press;
int rectx, recty;
PImage canvas;
PImage cursor;
boolean handbool, _handbool, drawCanvas=true;
int c;
void canvasUpdate() {
  canvas = get(80, 80, width-160, height-160);
}
public void spectrumWindowSetup(PApplet app, GWinData data) {
  app.image(loadImage("colourspectrum.jpg"),0,0);
  app.cursor(cursorDropper,4,4);
}
public void spectrumDropper(PApplet app, GWinData data, MouseEvent mouseEvent) {
  if (mouseEvent.getAction()==MouseEvent.PRESS) {
    c=app.get(app.mouseX,app.mouseY);
  }
}
GWindow colourWindow;
void setup() {
  colourWindow = GWindow.getWindow(this, "Colour palette", 100, 50, 600, 388, JAVA2D);
  colourWindow.setActionOnClose(G4P.KEEP_OPEN);
  colourWindow.addPreHandler(this, "spectrumWindowSetup");
  colourWindow.addMouseHandler(this, "spectrumDropper");
  ((PGraphicsOpenGL)g).textureSampling(3);
  ellipseMode(CORNER);
  load();
  cursor=cursorPencil;
  cursor(cursor,4,4);
  size(1200, 800, P2D);
  frameRate(200);
  noSmooth();
  background(255);
  canvasUpdate();
  _handbool=false;
  c=0;
}

void mousePressed() {
  press=true;
  click=true;
  if (cursor==cursorRectangle||cursor==cursorOval) {
    pushMatrix();
    rectx=mouseX;
    recty=mouseY;
    popMatrix();
  }
}

void mouseReleased() {
  click=false;
  canvasUpdate();
  image(canvas, 80, 80);
}
void keyPressed() {
  if (key=='s' || key=='S') {
    get(81, 81, width-161, height-161).save("images/save.png");
  }
}
void draw() {
  handbool=false;
  tint(255,254);
  if (drawCanvas) {
    image(canvas, 80, 80);
  }
  if (keyPressed) {
    if (key == 'r' || key == 'R') {
      background(255);
      canvasUpdate();
    }
  }
  if (click) {
    toolPencil();
    toolEraser();
    toolDropper();
    toolRectangle();
    toolOval();
  }

  strokeWeight(1);
  stroke(100);
  fill(100);

  rect(0, 0, 80, 800);
  rect(1120, 0, 80, 800);

  rect(0, 0, 1200, 80);
  rect(0, 720, 1200, 80);

  stroke(0, 0, 0, 0);
  fill(0, 0, 0, 60);
  rect(1120, 100, 10, 630);
  rect(100, 720, 1020, 10);
  
  fill(0);
  textSize(18);
  textAlign(CENTER);
  text("Save with S!",width/2,(height/20)*19);
  text("(This will overwrite your last saved image if you do not rename it)",width/2,(height/20)*19+20);
  text(frameRate, width-50, height-20);
  fill(0, 0, 0, 60);
  toolbar();
  fill(c);
  rect(width-40,10,30,30);
  if (handbool!=_handbool) {
    if (handbool) {
      cursor(HAND);
    } else {
      cursor(cursor,4,4);
    }
  }
  press=false;
  _handbool=handbool;
}
