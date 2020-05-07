void toolDropper() {
  if (tool=="dropper") {
    if (mouseX>80
     && mouseY>80
     && mouseX<canvas.width+80
     && mouseY<canvas.height+80) {
      c=get(mouseX,mouseY);
     }
  }
}