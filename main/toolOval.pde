void toolOval() {
  if (tool=="oval") {
    image(canvas, 80, 80);
    fill(c, 255);
    ellipse(rectx, recty, mouseX-rectx, mouseY-recty);
  }
}