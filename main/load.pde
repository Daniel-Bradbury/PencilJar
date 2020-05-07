PImage cursorPencil;
PImage cursorEraser;
PImage cursorDropper;
PImage cursorRectangle;
PImage cursorOval;

PImage colourSpectrum;
void load() {
  cursorPencil=loadImage("cursor/cursor-pencil.png");
  cursorEraser=loadImage("cursor/cursor-eraser.png");
  cursorDropper=loadImage("cursor/cursor-dropper.png");
  cursorRectangle=loadImage("cursor/cursor-rectangle.png");
  cursorOval=loadImage("cursor/cursor-oval.png");

  colourSpectrum=loadImage("colourspectrum.jpg");
}