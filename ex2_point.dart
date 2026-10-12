class Point {
  double _x;
  double _y;

  Point(this._x, this._y);

  void move(double dx, double dy) {
    _x += dx;
    _y += dy;
  }

  void display() {
    print('Point($_x, $_y)');
  }
}

void main() {
  var pt = Point(2, 5);
  pt.display(); // Point(2.0, 5.0)
  pt.move(-1, 3);
  pt.display(); // Point(1.0, 8.0)
}
