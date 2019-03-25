
PVector center;

void setup () {
  size(600, 600);
  
  center = new PVector(width * 0.5, height * 0.5);
}

void draw () {
  background(255);
  
  fill(0);
  ellipse(center.x, center.y, 8, 8);
  
  PVector mouse = new PVector(mouseX, mouseY);
  
  // mouse = mouse - center
  mouse.sub(center);
  
  // Normalizamos y multiplicamos
  mouse.normalize();
  mouse.mult(100);
  
  translate(width * 0.5, height * 0.5);
  line(0, 0, mouse.x, mouse.y);
}
