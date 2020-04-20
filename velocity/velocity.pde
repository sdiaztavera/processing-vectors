
Mover mover;

void setup () {
  size(600, 600);

  mover = new Mover(300, 300);
}

void draw () {
  background(255);
  
  mover.update();
  mover.checkEdges();
  mover.render();
}
