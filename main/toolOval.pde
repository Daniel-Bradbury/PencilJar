void toolOval() {
  if (cursor==cursorOval) {
    fill(c, 255);
    ellipse(rectx, recty, mouseX-rectx, mouseY-recty);
  }
}