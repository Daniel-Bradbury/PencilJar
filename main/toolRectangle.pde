void toolRectangle() {
  if (tool=="rectangle") {
    fill(c, 255);
    rect(rectx, recty, mouseX-rectx, mouseY-recty);
  }
}