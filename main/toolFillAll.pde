void toolFillAll() {
  if (tool=="fillall") {
    if(mouseX>80
    && mouseY>80
    && mouseX<canvas.width+80
    && mouseY<canvas.height+80) {
      background(c);
    }
  }
}