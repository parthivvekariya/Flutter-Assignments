import 'dart:io';

void main()
{
  //get input from user
  print("Enter any number");
  int n = int.parse(stdin.readLineSync()!);

  //variables

  int i, ld, rn = 0;

  while (n != 0) {
    ld = n % 10;
    rn = (rn * 10) + ld;
    n = (n / 10).floor();
  }
  print(rn);
}