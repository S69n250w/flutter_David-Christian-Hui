abstract class Shape {
 double getArea();
 double getPerimeter();
}

class Square extends Shape {
 final double side;

 Square(this.side);

 @override
 double getArea() {
    return side * side;
 }

 @override
 double getPerimeter() {
    return 4 * side;
 }
}

class Rectangle extends Shape {
 final double width;
 final double height;

 Rectangle(this.width, this.height);

 @override
 double getArea() {
    return width * height;
 }

 @override
 double getPerimeter() {
    return 2 * (width + height);
 }
}

class Circle extends Shape {
 final double radius;

 Circle(this.radius);

 @override
 double getArea() {
    return 3.14 * radius * radius;
 }

 @override
 double getPerimeter() {
    return 2 * 3.14 * radius;
 }
}

void main() {
 var square = Square(4);
 var rectangle = Rectangle(3, 4);
 var circle = Circle(3);

 print('Square');
 print('Area: ${square.getArea()}');
 print('Perimeter: ${square.getPerimeter()}');

 print('\nRectangle');
 print('Area: ${rectangle.getArea()}');
 print('Perimeter: ${rectangle.getPerimeter()}');

 print('\nCircle');
 print('Area: ${circle.getArea()}');
 print('Perimeter: ${circle.getPerimeter()}');
}