void toolLine() {
  if (tool=="line") {
    image(canvas, 80, 160);
    strokeWeight(5);
    stroke(c);
    line(initx, inity, mouseX, mouseY);
  }
}