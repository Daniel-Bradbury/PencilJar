int click, press;
int rectx, recty;
PImage canvas;
PImage cursorPencil;
PImage cursorRectangle;
PImage cursorOval;
PImage cursor;
boolean handbool;
void setup() {
  ellipseMode(CORNER);
  cursorPencil=loadImage("cursor/cursor-pencil.png");
  cursorRectangle=loadImage("cursor/cursor-rectangle.png");
  cursorOval=loadImage("cursor/cursor-oval.png");
  cursor=cursorPencil;
  cursor(cursor);
  size(1200, 800);
  frameRate(120);
  noSmooth();
  background(255);
  canvas = get();
}

void mousePressed() {
  press=1;
  click=1;
  if (cursor==cursorRectangle||cursor==cursorOval) {
    pushMatrix();
    translate((-cursorPencil.width/2)+5, (-cursorPencil.height/2)+5);
    rectx=mouseX;
    recty=mouseY;
    popMatrix();
  }
}

void mouseReleased() {
  click=0;
  if (cursor==cursorRectangle||cursor==cursorOval) {
    canvas = get();
  }
}

void draw() {
  handbool=false;
  background( canvas );
  if (keyPressed) {
    if (key == 'r' || key == 'R') {
      background(255);
      canvas = get();
    }
  }
  pushMatrix();
  translate((-cursorPencil.width/2)+5, (-cursorPencil.height/2)+5);
  if (click==1) {
    if (cursor==cursorPencil) {
      strokeWeight(5);
      stroke(0);
      beginShape();
      vertex(mouseX-1, mouseY-1);
      vertex(pmouseX-1, pmouseY-1);
      endShape();
      popMatrix();
      canvas = get();
      pushMatrix();
    }
    if (cursor==cursorRectangle) {
      fill(0, 255);
      rect(rectx, recty, mouseX-rectx, mouseY-recty);
    }
    if (cursor==cursorOval) {
      fill(0, 255);
      ellipse(rectx, recty, mouseX-rectx, mouseY-recty);
    }
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

  pushMatrix();
  translate((-cursorPencil.width/2)+5, (-cursorPencil.height/2)+5);
  toolbar();
  if (handbool) {
    cursor(HAND);
  } else {
    cursor(cursor);
  }
  popMatrix();
  press=0;
}
