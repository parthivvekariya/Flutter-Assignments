import 'dart:io';

void main()
{
  int n, a = 0, b = 1, i, c;

  //Get Input from user
  print("Enter Your Number : ");
  int? a1= int.parse(stdin.readLineSync()!);

  // loop
  for(i = 1; i <= a1; i++)
  {
    print(a);
    c = a + b;
    a = b;
    b = c;
  }
}