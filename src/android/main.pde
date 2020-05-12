void settings() {
  System.setProperty("jogl.disable.openglcore", "false"); //Fixes crash on some linux systems
  fullScreen(P2D);
}
boolean click, press;
int initx, inity;
PImage canvas;
PImage cursor;
PImage spectrumImage;
int canvasw, canvash;
boolean handbool, _handbool, refreshCanvas=true;
int c;
void canvasUpdate() {
  canvas = get(80, 160, canvasw, canvash);
}

void setup() {
  canvasw=width-160;
  canvash=height-160;
  ((PGraphicsOpenGL)g).textureSampling(3);
  generateSpectrum();
  ellipseMode(CORNER);
  load();
  cursorInit();
  frameRate(200);
  background(255);
  canvasUpdate();
  _handbool=false;
  c=0;
}

void mousePressed() {
  press=true;
  click=true;
  initx=mouseX;
  inity=mouseY;
}

void mouseReleased() {
  click=false;
  canvasUpdate();
  //image(canvas, 80, 160);
}
void keyPressed() {
  if (key=='s' || key=='S') {
    get(81, 161, canvasw-1, canvash-1).save("images/save.png");
  }
}
void draw() {
  handbool=false;
  tint(255);
  if (refreshCanvas) {
    image(canvas, 80, 160);
  }
  if (click) {
    runTools();
  }
  drawBackground();
  stroke(0,0);
  fill(0);
  textSize(18);
  textAlign(CENTER);
  text(frameRate, width-50, canvash+80+40);
  fill(0, 0, 0, 60);
  toolbar();
  fill(c);
  rect(width-40,10,30,30);
  androidSpectrum();
  cursorCheckHand();
  press=false;
  _handbool=handbool;
}