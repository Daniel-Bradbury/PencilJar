void toolEraser() {
  if (tool=="eraser") {
    drawCanvas=false;
    strokeWeight(15);
    stroke(255);
    line(mouseX-1, mouseY-1, pmouseX-1, pmouseY-1);
    popMatrix();
    pushMatrix();
  }
}