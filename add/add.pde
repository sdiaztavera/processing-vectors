
PVector position;
PVector velocity;

void setup () {
  size(600, 600);

  position = new PVector(300, 300);
  velocity = new PVector(4, 5);
}

void draw () {
  background(255);
  
  // Se hace la suma de vectores: position = position + velocity
  position.add(velocity);

  if ((position.x > width) || (position.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  
  if ((position.y > width) || (position.y < 0)) {
    velocity.y = velocity.y * -1;
  }
  
  fill(0);
  ellipse(position.x, position.y, 5, 5);
  
  line(position.x, position.y, position.x + velocity.x, position.y + velocity.y); 
}
