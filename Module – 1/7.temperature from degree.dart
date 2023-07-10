import 'dart:io';

void main() // Main Method
{
  // get information from user
  print("Enter Celsius : ");
  double cel = double.parse(stdin.readLineSync()!);

  //convert
  double f = (cel * 9 / 5) + 32;
  print("Fahrenheit Is $f");
}