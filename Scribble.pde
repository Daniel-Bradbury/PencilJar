int click;
int pixelScale;
void setup() {
  size(1000,1000);
  frameRate(9999);
  noSmooth();
  strokeWeight(5);
}

void mousePressed() {
  click=1;
}

void mouseReleased() {
  click=0;
}

void draw() {
  if (click==1) {
  beginShape();
  vertex(mouseX-1,mouseY-1);
  vertex(pmouseX-1,pmouseY-1);
  endShape();
  }
}
