class Mover {

  PVector position;
  PVector velocity; 

  Mover () {
    position = new PVector(0, 0);
    velocity = new PVector(1, 1);
  }

  Mover (float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(1, 1);
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
}
