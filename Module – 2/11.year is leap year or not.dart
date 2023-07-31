import 'dart:io';

void main()
{
  // Get The value From User
  print("Enter Any Year : ");
  int? year = int.parse(stdin.readLineSync()!);


  // Condition To Check Given Number Leap Year Or Not
  if(year % 4 == 0 && year % 100 != 0 || year % 400 == 0)
      {
    print("Year Is Leap Year...");
  }
  else
  {
    print("Year Is Not Leap Year...");
  }
}