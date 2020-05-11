void drawBackground() {
  strokeWeight(1);
  stroke(100);
  fill(100);

  rect(0, 0, 80, height);
  rect(canvasw, 0, 100, height);
  rect(0, 0, width, 80);
  rect(0, canvash, width, 100);
}