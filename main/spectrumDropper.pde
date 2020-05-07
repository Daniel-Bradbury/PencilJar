void spectrumDropper() {
  if(mouseX>canvas.width-80
  && mouseY>0
  && mouseX<canvas.width+80
  && mouseY<80) {
    cursor(cursorDropper,4,4);
    if (click) {
    c=get(mouseX,mouseY);
    }
  } else {
    cursor(cursor,4,4);
  }
}