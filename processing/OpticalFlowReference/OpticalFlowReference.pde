int sW = 960;
int sH = 540;
int fps = 60;

void setup() {
  size(50, 50, P2D);  surface.setSize(sW, sH);

 frameRate(fps);
  
  bloomSetup();
  opticalFlowSetup();
}

void draw() {
  tex.beginDraw();
  tex.blendMode(NORMAL);
  tex.background(0);
  tex.blendMode(ADD);
  
  if (mousePressed) {
    tex.stroke(255);
    tex.strokeWeight(10);
    tex.line(mouseX,mouseY,pmouseX,pmouseY);
  }
  
  tex.endDraw();
  opticalFlowDraw();
  bloomDraw();
  
  surface.setTitle("" + frameRate);
}
