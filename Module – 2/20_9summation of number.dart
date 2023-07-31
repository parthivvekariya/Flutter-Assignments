import 'dart:io';

void main()
{
  //get input from user
  print("Enter a number");
  int n = int.parse(stdin.readLineSync()!);

  //variables
  int sum=0,m;
  //loop
  while(n!=0)
  {
    m = n % 10;
    sum = sum + m;
    n = (n / 10).floor();
  }
  print("Your Total is$sum");

}