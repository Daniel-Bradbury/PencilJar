void toolRectangle() {
  if (tool=="rectangle") {
    image(canvas, 80, 160);
    strokeWeight(5);
    fill(c);
    rect(initx, inity, mouseX-initx, mouseY-inity);
  }
}