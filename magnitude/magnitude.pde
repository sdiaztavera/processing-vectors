
PVector center;

void setup () {
  size(600, 600);

  center = new PVector(width * 0.5, height * 0.5);
}

void draw () {
  
  // mouse = mouse - center
  PVector mouse = new PVector(mouseX, mouseY);
  mouse.sub(center);
  
  // Obtenemos la magnitud del vector
  float magnitude = mouse.mag();
  
  // Mapea la magnitud con el color del fondo
  colorMode(HSB, 360, 100, 100);
  float hue = myMap(magnitude, 0, 425, 0, 359);
  background(hue, 100, 100);
  
  // Usa la magnitud como tamaño de una elipse
  colorMode(RGB, 255, 255, 255);
  fill(0);
  
  ellipse(300, 300, magnitude * 0.5, magnitude * 0.5);
  
  translate(300, 300);
  line(0, 0, mouse.x, mouse.y);
}

float myMap (float x, float minSrc, float maxSrc, float minTarg, float maxTarg) {
  return (((x - minSrc) / (maxSrc - minSrc)) * (maxTarg - minTarg)) + minTarg;
}
