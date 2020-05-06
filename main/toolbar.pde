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
  tool Pencil = new tool(cursorPencil,"pencil",20,100);
  Pencil.draw();
  tool Rectangle = new tool(cursorRectangle,"rectangle",20,190);
  Rectangle.draw();
  tool Oval = new tool(cursorOval,"oval",20,280);
  Oval.draw();
}
