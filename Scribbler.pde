int click, press;
int rectx, recty;
PImage canvas;
PImage cursorPencil;
PImage cursorRectangle;
PImage cursorOval;
PImage cursor;
boolean handbool;
int c;
void canvasUpdate() {
  canvas = get(100, 80, width-200, height-160);
}
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
  canvasUpdate();
}

void mousePressed() {
  press=1;
  click=1;
  if (mouseButton == LEFT) {
    c=0;
  } else {
    if (mouseButton == RIGHT) {
      c=255;
    }
  }
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
    canvasUpdate();
  }
}
void keyPressed() {
  if (key=='s' || key=='S') {
    canvas.save("save.png");
  }
}
void draw() {

  handbool=false;
  image(canvas, 100, 80);
  if (keyPressed) {
    if (key == 'r' || key == 'R') {
      background(255);
      canvasUpdate();
    }
  }
  pushMatrix();
  translate((-cursorPencil.width/2)+5, (-cursorPencil.height/2)+5);
  if (click==1) {
    if (cursor==cursorPencil) {
      strokeWeight(5);
      stroke(c);
      beginShape();
      vertex(mouseX-1, mouseY-1);
      vertex(pmouseX-1, pmouseY-1);
      endShape();
      popMatrix();
      canvasUpdate();
      pushMatrix();
    }
    if (cursor==cursorRectangle) {
      fill(c, 255);
      rect(rectx, recty, mouseX-rectx, mouseY-recty);
    }
    if (cursor==cursorOval) {
      fill(c, 255);
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
  
  fill(0);
  textSize(18);
  textAlign(CENTER);
  text("Save with S!",width/2,(height/20)*19);
  text("(This will overwrite your last saved image if you do not rename it)",width/2,(height/20)*19+20);
  
  fill(100);
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
