int pixelScale;
void setup() {
  size(1000,1000);
  frameRate(9999);
  noSmooth();
  strokeWeight(5);
}

void draw() {
  beginShape();
  vertex(mouseX-1,mouseY-1);
  vertex(pmouseX-1,pmouseY-1);
  endShape();
}
