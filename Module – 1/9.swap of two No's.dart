import 'dart:io';

void main()
{
  int a=10;
  int b=20;

  a = a+b;
  b = a-b;
  a = a-b;

  print("\nSwapping value:");
  print("\nValue Of A $a");
  print("Value Of B $b");
}