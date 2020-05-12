void toolDropper() {
  if (tool=="dropper") {
    if(mouseX>80
    && mouseX<canvas.width+80) {
      c=get(mouseX,mouseY);
    }
  }
}
