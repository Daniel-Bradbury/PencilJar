int click;
int pixelScale;
void setup() {
  size(1200,800);
  frameRate(9999);
  noSmooth();
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
  strokeWeight(5);
  stroke(0);
  beginShape();
  vertex(mouseX-1,mouseY-1);
  vertex(pmouseX-1,pmouseY-1);
  endShape();
  }
  strokeWeight(1);
  stroke(100);
  fill(100);
  
  rect(0,0,80,800);
  rect(1120,0,80,800);
  
  rect(0,0,1200,80);
  rect(0,720,1200,80);
  
  stroke(0,0,0,0);
  fill(0,0,0,60);
  rect(1120,100,10,630);
  rect(100,720,1020,10);
}
