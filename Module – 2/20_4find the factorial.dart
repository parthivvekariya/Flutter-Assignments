import 'dart:io';

void main()
{
  double i, fect = 1;
  //Get Input from user
  print("Enter ANy Number : ");
  double no = double.parse(stdin.readLineSync()!);

  // loop
  for(i=1; i<=no; i++)
  {
    // Formula For Find Factorial Value
    fect = fect * i;
  }
  print("Your Factorial Is $fect");
}