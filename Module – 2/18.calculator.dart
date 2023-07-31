import 'dart:io';

void main()
{
  print('Enter your choice:');
  print('1. Addition');
  print('2. Subtraction');
  print('3. Multiplication');
  print('4. Division');

  int choice = int.parse(stdin.readLineSync()!);

  switch (choice)
  {
    case 1:
      {
        //Addition

        print('Enter the first number:');
        double num1 = double.parse(stdin.readLineSync()!);
        print('Enter the second number:');
        double num2 = double.parse(stdin.readLineSync()!);

        double result = num1 + num2;
        print('Result: $num1 + $num2 = $result');

      }
      break;

    case 2:
      {
        //Subtraction
        print('Enter the first number:');
        double num1 = double.parse(stdin.readLineSync()!);
        print('Enter the second number:');
        double num2 = double.parse(stdin.readLineSync()!);

        double result = num1 - num2;
        print('Result: $num1 - $num2 = $result');
      }
      break;

    case 3:
      {
        //Multiplication
        print('Enter the first number:');
        double num1 = double.parse(stdin.readLineSync()!);
        print('Enter the second number:');
        double num2 = double.parse(stdin.readLineSync()!);

        double result = num1 * num2;
        print('Result: $num1 * $num2 = $result');

      }
      break;

    case 4:
      {
        //Division
        print('Enter the dividend:');
        double dividend = double.parse(stdin.readLineSync()!);
        print('Enter the divisor:');
        double divisor = double.parse(stdin.readLineSync()!);

        if (divisor != 0)
        {
          double result = dividend / divisor;
          print('Result: $dividend / $divisor = $result');
        }
        else
        {
          print('Error: Division by zero is not allowed.');
        }

      }
      break;

    default:
      print('Invalid choice. Please try again.');
  }

  print('\n');
}
