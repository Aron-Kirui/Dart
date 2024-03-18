import 'dart:io';

// Define an interface
abstract class Shape {
  double calculateArea();
}

// Define a class that implements the Shape interface
class Rectangle implements Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }
}

// Define a class that inherits from Rectangle and overrides the calculateArea method
class Square extends Rectangle {
  Square(double sideLength) : super(sideLength, sideLength);

  @override
  double calculateArea() {
    return length * length;
  }
}

// Define a method to create instances of classes based on user input
List<Shape> createShapes() {
  var shapes = <Shape>[];
  print('Enter the number of shapes:');
  var numShapes = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < numShapes; i++) {
    print('Enter the type of shape (Rectangle/Square):');
    var shapeType = stdin.readLineSync()!;
    if (shapeType == 'Rectangle') {
      print('Enter length:');
      var length = double.parse(stdin.readLineSync()!);
      print('Enter width:');
      var width = double.parse(stdin.readLineSync()!);
      shapes.add(Rectangle(length, width));
    } else if (shapeType == 'Square') {
      print('Enter side length:');
      var sideLength = double.parse(stdin.readLineSync()!);
      shapes.add(Square(sideLength));
    }
  }
  return shapes;
}

// Define a method that demonstrates the use of a loop
double calculateTotalArea(List<Shape> shapes) {
  var totalArea = 0.0;
  for (var shape in shapes) {
    totalArea += shape.calculateArea();
  }
  return totalArea;
}

void main() {
  var shapes = createShapes();
  var totalArea = calculateTotalArea(shapes);
  print("Total area of shapes: $totalArea");
}
