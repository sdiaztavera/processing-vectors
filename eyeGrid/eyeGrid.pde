
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
  
}
