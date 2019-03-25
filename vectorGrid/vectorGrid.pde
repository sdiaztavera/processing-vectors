
float rectW, rectH;

PVector mouse;
int n = 10;

void setup () {
  size(600, 600);
  
  rectW = width / float(n);
  rectH = height / float(n);
  
  mouse = new PVector();
  
  noFill();
}

void draw () {
  background(255);
  
  PVector centerOffset = new PVector(rectW * 0.5, rectH * 0.5);
  
  // Se crea un grid y se obtiene el vector centro de cada uno
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      float x = i * rectW;
      float y = j * rectH;
      
      mouse.x = mouseX;
      mouse.y = mouseY;
      
      PVector center = new PVector(x, y);
      center.add(centerOffset);
      
      // Se obtiene el vector resta del mouse con el centro de cada
      // celda del grid
      mouse.sub(center);
      mouse.normalize();
      mouse.mult(rectW * 0.5);
      mouse.add(center);
      
      rect(x, y, rectW, rectH);
      ellipse(center.x, center.y, 8, 8);
      line(center.x, center.y, mouse.x, mouse.y);
    }
  }
}
