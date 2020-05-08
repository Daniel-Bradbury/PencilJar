PImage cursorPencil;
PImage cursorEraser;
PImage cursorDropper;
PImage cursorLine;
PImage cursorRectangle;
PImage cursorOval;
PImage cursorFillAll;
void load() {
  cursorPencil=loadImage("cursor/cursor-pencil.png");
  cursorEraser=loadImage("cursor/cursor-eraser.png");
  cursorDropper=loadImage("cursor/cursor-dropper.png");
  cursorLine=loadImage("cursor/cursor-line.png");
  cursorRectangle=loadImage("cursor/cursor-rectangle.png");
  cursorOval=loadImage("cursor/cursor-oval.png");
  cursorFillAll=loadImage("cursor/cursor-fillall.png");
}