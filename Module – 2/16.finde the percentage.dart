import 'dart:io';

void main()
{
  print("Enter a mark of maths:");
  int m = int.parse(stdin.readLineSync()!);
  print("Enter a mark of english:");
  int e = int.parse(stdin.readLineSync()!);
  print("Enter a mark of gujarati:");
  int g = int.parse(stdin.readLineSync()!);
  print("Enter a mark of hindi:");
  int h = int.parse(stdin.readLineSync()!);
  print("Enter a mark of sanskrit:");
  int s = int.parse(stdin.readLineSync()!);

  // int m = 50;
  // int e = 35;
  // int g = 45;
  // int h = 63;
  // int s = 54;


  int sum = m+e+g+h+s;
  print("Total is");
  print(sum);

  double percentage = sum / 500 * 100;
  print("percentage is:");
  print(percentage);

  if(percentage >=75)
  {
    print("Distinction");
  }

  else if(percentage >=60)
  {
    print("First class");
  }

  else if(percentage >=50)
  {
    print("Second class");
  }

  else if(percentage >=35)
  {
    print("Pass class");
  }

  else
  {
    print("Fail");
  }

}