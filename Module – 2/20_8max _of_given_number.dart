import 'dart:io';

void main()
{
  //get input from user
  print("Enter a number:");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Enter a number:");
  int n2 = int.parse(stdin.readLineSync()!);
  print("Enter a number:");
  int n3 = int.parse(stdin.readLineSync()!);


//logic
  int max;
  max = (n1 > n2? (n1 > n3? n1 :n3) : (n2 > n3 ? n2 : n3));
  //print 
  print("maximum is $max");
}