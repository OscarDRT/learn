void main(List<String> args) {
  final square = new Square(side: -10);

  print(square._side);
  print("Area: ${square.area}");

  square.side = 2;
  print("Area: ${square.area}");
}

class Square {
  double _side;

  Square({required double side})
      : assert(side >= 0, 'side must be >= 0'),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    if (value < 0) throw 'value must be >= 0';
    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
