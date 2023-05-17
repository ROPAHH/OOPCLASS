enum ShapeType { circle, rectangle, triangle }

abstract class Shape {
  factory Shape(ShapeType type) {
    switch (type) {
      case ShapeType.circle:
        return Circle();
      case ShapeType.rectangle:
        return Rectangle();
      default:
        throw ArgumentError('Invalid shape type');
    }
  }

  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print('  ***  \n *   * \n*     *\n *   * \n  ***  ');
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print('*******\n*     *\n*     *\n*     *\n*******');
  }
}

void main() {
  try {
    Shape circle = Shape(ShapeType.circle);
    circle.draw();

    Shape rectangle = Shape(ShapeType.rectangle);
    rectangle.draw();

    Shape invalidShape = Shape(ShapeType.triangle); // Invalid shape type
    invalidShape.draw(); // This line won't be executed
  } catch (e) {
    print('Error: $e');
  }
}
