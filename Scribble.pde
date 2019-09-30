int click;
int pixelScale;
void setup() {
  size(1200,800);
  frameRate(9999);
  noSmooth();
  strokeWeight(5);
  background(255);
}

void mousePressed() {
  click=1;
}

void mouseReleased() {
  click=0;
}

void draw() {
  if (click==1) {
  
  stroke(0);
  beginShape();
  vertex(mouseX-1,mouseY-1);
  vertex(pmouseX-1,pmouseY-1);
  endShape();
  }
  stroke(100);
  fill(100);
  rect(0,0,80,800);
  rect(1120,0,80,800);
  
  rect(0,0,1200,80);
  rect(0,720,1200,80);
}
