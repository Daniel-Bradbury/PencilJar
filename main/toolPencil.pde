void toolPencil() {
  if (cursor==cursorPencil) {
    strokeWeight(5);
    stroke(c);
    beginShape();
    vertex(mouseX-1, mouseY-1);
    vertex(pmouseX-1, pmouseY-1);
    endShape();
    popMatrix();
    canvasUpdate();
    pushMatrix();
  }
}