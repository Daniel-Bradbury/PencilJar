int click, press;
int rectx, recty;
PImage canvas;
PImage iconPen;
PImage iconOval;
PImage iconRectangle;
String tool;
boolean handbool;
int c;
void canvasUpdate() {
  canvas = get(80, 80, width-160, height-160);
}
void setup() {
  iconPen=loadImage("icon-pen.png");
  iconOval=loadImage("icon-oval.png");
  iconRectangle=loadImage("icon-rectangle.png");
  ellipseMode(CORNER);
  tool="pen";
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
  if (tool=="rectangle"||tool=="oval") {
    rectx=mouseX;
    recty=mouseY;
  }
}

void mouseReleased() {
  click=0;
  if (tool=="rectangle"||tool=="oval") {
    canvasUpdate();
  }
}
void keyPressed() {
  if (key=='s' || key=='S') {
    canvas.save("images/save.png");
  }
}
void draw() {

  handbool=false;
  image(canvas, 80, 80);
  if (keyPressed) {
    if (key == 'r' || key == 'R') {
      background(255);
      canvasUpdate();
    }
  }
  if (click==1) {
    if (tool=="pen") {
      strokeWeight(5);
      stroke(c);
      beginShape();
      vertex(mouseX-1, mouseY-1);
      vertex(pmouseX-1, pmouseY-1);
      endShape();
      canvasUpdate();
    }
    if (tool=="rectangle") {
      fill(c, 255);
      rect(rectx, recty, mouseX-rectx, mouseY-recty);
    }
    if (tool=="oval") {
      fill(c, 255);
      ellipse(rectx, recty, mouseX-rectx, mouseY-recty);
    }
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
  
  fill(0, 0, 0, 60);
  toolbar();
  press=0;
}
