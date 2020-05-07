void toolOval() {
  if (tool=="oval") {
    image(canvas, 80, 80);
    strokeWeight(5);
    fill(c, 255);
    ellipse(rectx, recty, mouseX-rectx, mouseY-recty);
  }
}