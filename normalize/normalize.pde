
Vector center;
Vector mouse;

void setup () {
  size(600, 600);
  
  center = new Vector(width * 0.5, height * 0.5);
  mouse = new Vector();
}

void draw () {
  background(255);
  
  // Calculamos el vector resta
  // mouse = mouse - center
  mouse.x = mouseX;
  mouse.y = mouseY;
  mouse.sub(center);
  
  fill(0);
  ellipse(center.x, center.y, 8, 8);
  
  translate(width * 0.5, height * 0.5);
  line(0, 0, mouse.x, mouse.y);
}
