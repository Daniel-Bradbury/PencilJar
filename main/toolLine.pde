void toolLine() {
  if (tool=="line") {
    image(canvas, 80, 80);
    strokeWeight(5);
    stroke(c);
    line(initx, inity, mouseX, mouseY);
  }
}