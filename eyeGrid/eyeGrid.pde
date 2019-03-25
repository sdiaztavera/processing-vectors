
int nEyesX = 10;
int nEyesY = 10;

float eyesSize;

void setup () {
  size(600, 600);
  
  eyesSize = width / float(nEyesX);
}

void draw () {
  background(127);
  
  for (int i = 0; i < nEyesX; i++) {
    for (int j = 0; j < nEyesX; j++) {
      float x = (i * eyesSize) + (eyesSize * 0.5);
      float y = (j * eyesSize) + (eyesSize * 0.5);
      
      drawEye(x, y, eyesSize);
    }
  }
}

void drawEye (float x, float y, float size) {
  
  PVector eyeCenter = new PVector(x, y);
  PVector mouse = new PVector(mouseX, mouseY);

  noStroke();
  fill(255);
  ellipse(eyeCenter.x, eyeCenter.y, size, size);
  
  PVector eyeSight = PVector.sub(mouse, eyeCenter);
  eyeSight.limit(size / 4.0);
  eyeSight.add(eyeCenter);

  fill(0);
  ellipse(eyeSight.x, eyeSight.y, size / 2, size / 2);

  eyeSight = PVector.sub(mouse, eyeCenter);
  eyeSight.limit((3.0 / 8.0) * size);
  eyeSight.add(eyeCenter);

  fill(255);
  ellipse(eyeSight.x, eyeSight.y, size / 8, size / 8);
}
