void toolOval() {
  if (tool=="oval") {
    fill(c, 255);
    ellipse(rectx, recty, mouseX-rectx, mouseY-recty);
  }
}