
Vector center;
Vector mouse;

void setup () {
  size(600, 600);

  center = new Vector(width * 0.5, height * 0.5);
  mouse  = new Vector();
}

void draw () {
  background(255);
  
  // mouse = mouse - center
  mouse.x = mouseX;
  mouse.y = mouseY;
  mouse.sub(center);
  
  // Obtenemos la magnitud del vector
  // ¿Cuanto mide el vector?
  
  translate(300, 300);
  line(0, 0, mouse.x, mouse.y);
}
