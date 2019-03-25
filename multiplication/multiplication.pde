
PVector center;

void setup () {
  size(600, 600);
  
  center = new PVector(width * 0.5, height * 0.5);
}

void draw () {
  background(255);
  
  PVector mouse = new PVector(mouseX, mouseY);
  
  // Calculamos el vector resta
  // mouse = mouse - center
  mouse.sub(center);
  
  // Lo multiplicamos por un escalar
  mouse.mult(2.0); // Si es un numero positivo x > 1, se hace grande
  //mouse.mult(0.5); // Si un numero 0 < x < 1, se hace pequeño
  //mouse.mult(-1.0); // Si es negativo, toma la dirección contraria
  
  fill(0);
  ellipse(center.x, center.y, 8, 8);
  
  translate(width * 0.5, height * 0.5);
  line(0, 0, mouse.x, mouse.y);
}
