void toolPencil() {
  if (tool=="pencil") {
    c=0;
    drawCanvas=false;
    strokeWeight(5);
    stroke(c);
    line(mouseX-1, mouseY-1, pmouseX-1, pmouseY-1);
    popMatrix();
    pushMatrix();
  }
}