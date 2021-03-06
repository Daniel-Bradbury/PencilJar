String tool="pencil";
class tool {
  PImage img;
  int x;
  int y;
  String localtool;
  tool(PImage img, String localtool, int x, int y) {
    this.img=img;
    this.x=x;
    this.y=y;
    this.localtool=localtool;
  }
  void draw() {
    rect(x,y,cursorPencil.width*2,cursorPencil.height*2);
    if (mouseX>x-img.width*2 && mouseX<x+img.height*2 &&
      mouseY>y-img.height/4 && mouseY<y+img.height*2) {
      if (press) {
        cursor=img;
        tool=localtool;
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
  tool Pencil = new tool(cursorPencil,"pencil",10,100+(90*0));
  Pencil.draw();
  tool Eraser = new tool(cursorEraser,"eraser",10,100+(90*1));
  Eraser.draw();
  tool Dropper = new tool(cursorDropper,"dropper",10,100+(90*2));
  Dropper.draw();
  tool Line = new tool(cursorLine,"line",10,100+(90*3));
  Line.draw();
  tool Rectangle = new tool(cursorRectangle,"rectangle",10,100+(90*4));
  Rectangle.draw();
  tool Oval = new tool(cursorOval,"oval",10,100+(90*5));
  Oval.draw();
  tool FillAll = new tool(cursorFillAll,"fillall",10,100+(90*6));
  FillAll.draw();
}
