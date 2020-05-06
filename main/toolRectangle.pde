void toolRectangle() {
  if (cursor==cursorRectangle) {
    fill(c, 255);
    rect(rectx, recty, mouseX-rectx, mouseY-recty);
  }
}