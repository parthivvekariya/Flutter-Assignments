import 'dart:io';

void main()
{
  print("Enter The First Number");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter The second Number");
  int b = int.parse(stdin.readLineSync()!);
  print("Enter The Third Number");
  int c = int.parse(stdin.readLineSync()!);

  if(a>= b && a >=c)
  {
    print("First Value $a Is Max");
  }
  if(b>= a && b>=c)
  {
    print("second Value $b Is Max");
  }
  if(c>= a && c>=b)
  {
    print("Third Value $c Is Max");
  }
}