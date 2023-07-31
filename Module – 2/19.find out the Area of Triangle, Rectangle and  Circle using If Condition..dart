import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print('Menu:');
    print('1. Calculate the area of a triangle');
    print('2. Calculate the area of a rectangle');
    print('3. Calculate the area of a circle');
    print('4. Exit');
    print('Enter your choice (1-4):');

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      calculateTriangleArea();
    } else if (choice == 2) {
      calculateRectangleArea();
    } else if (choice == 3) {
      calculateCircleArea();
    } else if (choice == 4) {
      break;
    } else {
      print('Invalid choice. Please try again.');
    }

    print('\n');
  }
}

void calculateTriangleArea() {
  print('Enter the base length of the triangle:');
  double base = double.parse(stdin.readLineSync()!);

  print('Enter the height of the triangle:');
  double height = double.parse(stdin.readLineSync()!);

  double area = 0.5 * base * height;
  print('The area of the triangle is: $area');
}

void calculateRectangleArea() {
  print('Enter the length of the rectangle:');
  double length = double.parse(stdin.readLineSync()!);

  print('Enter the width of the rectangle:');
  double width = double.parse(stdin.readLineSync()!);

  double area = length * width;
  print('The area of the rectangle is: $area');
}

void calculateCircleArea() {
  print('Enter the radius of the circle:');
  double radius = double.parse(stdin.readLineSync()!);

  double area = pi * radius * radius;
  print('The area of the circle is: $area');
}
