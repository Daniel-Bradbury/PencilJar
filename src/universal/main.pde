boolean click, press;
int initx, inity;
PImage canvas;
PImage cursor;
PImage spectrumImage;
int canvasw, canvash;
boolean handbool, _handbool, refreshCanvas=true;
int c;
void canvasUpdate() {
  canvas = get(80, 80, canvasw, canvash);
}

void setup() {
  size(displayWidth,displayHeight,P2D);
  canvasw=width-80;
  canvash=height-80;
  ((PGraphicsOpenGL)g).textureSampling(3);
  spectrumImage=loadImage("colourspectrum.jpg");
  spectrumInit();
  ellipseMode(CORNER);
  load();
  cursorInit();
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
  initx=mouseX;
  inity=mouseY;
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
  tint(255);
  if (refreshCanvas) {
    image(canvas, 80, 80);
  }
  if (click) {
    toolPencil();
    toolEraser();
    toolDropper();
    toolLine();
    toolRectangle();
    toolOval();
    toolFillAll();
  }
  drawBackground();
  stroke(0,0);
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
  cursorCheckHand();
  press=false;
  _handbool=handbool;
}
