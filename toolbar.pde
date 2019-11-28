class tool {
  PImage img;
  int x;
  int y;
  tool(PImage img, int x, int y) {
    this.img=img;
    this.x=x;
    this.y=y;
  }
  void draw() {
    rect(x,y,iconPen.width*2,iconPen.height*2);
    if (mouseX>x-img.width*2 && mouseX<x+img.height*2 &&
      mouseY>y-img.height/4 && mouseY<y+img.height*2) {
      if (press==1) {
        if (img==iconPen) {
        tool="pen";
        }
        if (img==iconOval) {
        tool="oval";
        }
        if (img==iconRectangle) {
        tool="rectangle";
        }
        if (img==iconEraser) {
        tool="eraser";
        }
      }
      tint(255, 255);
      image(this.img, this.x+4, this.y+4, this.img.width*2, img.height*2);
      handbool=true;
    } else {
      tint(255, 160);
      image(this.img, this.x+4, this.y+4, this.img.width*2, img.height*2);
    }
  }
}

void toolbar() {
  tool Pencil = new tool(iconPen,10,100);
  Pencil.draw();
  tool Rectangle = new tool(iconRectangle,10,190);
  Rectangle.draw();
  tool Oval = new tool(iconOval,10,280);
  Oval.draw();
  tool Eraser = new tool(iconEraser,10,370);
  Eraser.draw();
}
