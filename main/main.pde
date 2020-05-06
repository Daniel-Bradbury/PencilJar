boolean click, press;
int rectx, recty;
PImage canvas;
PImage cursorPencil;
PImage cursorRectangle;
PImage cursorOval;
PImage cursor;
boolean handbool, _handbool, drawCanvas=true;
int c;
void canvasUpdate() {
  canvas = get(80, 80, width-160, height-160);
}
void setup() {
  ellipseMode(CORNER);
  cursorPencil=loadImage("cursor/cursor-pencil.png");
  cursorRectangle=loadImage("cursor/cursor-rectangle.png");
  cursorOval=loadImage("cursor/cursor-oval.png");
  cursor=cursorPencil;
  cursor(cursor,4,4);
  size(1200, 800, P2D);
  frameRate(500);
  noSmooth();
  background(255);
  canvasUpdate();
  _handbool=false;
}

void mousePressed() {
  press=true;
  click=true;
  if (mouseButton == LEFT) {
    c=0;
  } else {
    if (mouseButton == RIGHT) {
      c=255;
    }
  }
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
    canvas.save("images/save.png");
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
  pushMatrix();
  
  if (click) {
    toolPencil();
    toolRectangle();
    toolOval();
  }
  popMatrix();
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
  text(frameRate, width-50, 20);
  fill(0, 0, 0, 60);
  pushMatrix();
  translate((-cursorPencil.width/2)+5, (-cursorPencil.height/2)+5);
  toolbar();
  if (handbool!=_handbool) {
    if (handbool) {
      cursor(HAND);
    } else {
      cursor(cursor,4,4);
    }
  }
  popMatrix();
  press=false;
  _handbool=handbool;
}
