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
    rect(x,y,cursorPencil.width*2,cursorPencil.height*2);
    if (mouseX>x-img.width*2 && mouseX<x+img.height*2 &&
      mouseY>y-img.height/4 && mouseY<y+img.height*2) {
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
  tool Pencil = new tool(cursorPencil,20,100);
  Pencil.draw();
  tool Rectangle = new tool(cursorRectangle,20,190);
  Rectangle.draw();
}
