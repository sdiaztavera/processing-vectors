
class Vector {

  float x, y;
  
  Vector () {
    this.x = 0;
    this.y = 0;
  }
  
  Vector (float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  void sub(Vector v) {
    this.x -= v.x;
    this.y -= v.y;
  }
}
