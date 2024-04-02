void main() {

  final newSquare = Square(side: 10.0);
  newSquare.sideLength = 9.0;
  print('The area of the square is ${newSquare.area}');
}

class Square {
  double side;
  Square({ required side })
    : assert(side > 0, 'Side must to be greater than zero'),
    this.side = side;

  double get area {
    return side * side;
  }

  set sideLength(double side_) {
      this.side = side_;
  }

  double calculateArea() {
    return side * side;
  }
}