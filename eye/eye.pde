
void setup () {
  size(500, 500);
}

void draw () {
  background(127);

  drawEye(250, 250, 100);
}

void drawEye (float x, float y, float size) {

  // Cornea
  fill(255);
  noStroke();
  ellipse(x, y, size, size);
  
  // Retina
  fill(0);
  ellipse(x + (size / 4), y, size / 2, size / 2);

  fill(255);
  ellipse(x + (size / 3), y - (size / 12), size / 8, size / 8);
}
