
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
  
  // Se crea un grid y se obtiene el vector centro de cada uno
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      float x = i * rectW;
      float y = j * rectH;
      
      mouse.x = mouseX;
      mouse.y = mouseY;
      
      rect(x, y, rectW, rectH);
    }
  }
}
