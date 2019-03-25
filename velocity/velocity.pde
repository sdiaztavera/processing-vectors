
PVector position = new PVector(300, 300);
PVector velocity = new PVector(-4, 3);

void setup () {
  size(600, 600);
  
  background(255);
}

void draw () {
  noStroke();
  fill(255, 100);
  rect(0, 0, width, height);

  update();
  checkEdges();
  render();
}

void update () {
  position.add(velocity);
}

void checkEdges () {
  if (position.x > width) {
    position.x = 0;
  } else if (position.x < 0) {
    position.x = width;
  }

  if (position.y > height) {
    position.y = 0;
  } else if (position.y < 0) {
    position.y = height;
  }
}

void render () {
  stroke(0);
  fill(175);
  ellipse(position.x, position.y, 30, 30);
}
