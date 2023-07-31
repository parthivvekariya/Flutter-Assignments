import 'dart:io';

void main() {
  // table

  //get input from user
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= 10; i++)
  {
    int a = num * i;
    print("$num * $i = $a");
  }


}