
void setup () {
  size(500, 500);
}

void draw () {
  background(127);

  drawEye(250, 250, 100);
}

void drawEye (float x, float y, float size) {

  noStroke();
  fill(255);
  ellipse(x, y, size, size);

  fill(0);
  ellipse(x + (size / 4), y + (size / 4), size / 2, size / 2);

  fill(255);
  ellipse(eyeSight.x, eyeSight.y, size / 8, size / 8);
}
