class Mover {

  PVector position;

  Mover () {
    position = new PVector(0, 0);
  }

  Mover (float x, float y) {
    position = new PVector(x, y);
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
  }
}
