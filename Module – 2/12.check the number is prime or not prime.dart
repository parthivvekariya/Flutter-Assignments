import 'dart:io';

void main()
{
  double  c = 0;

  // Get The Input From User
  print("Enter Any Number : ");
  double n = double.parse(stdin.readLineSync()!);

  for(double i = 0; i <= n; i++) // Loop
      {
    if(n % i == 0) //Condition
        {
      c++;
    }
  }
  if(c==2)
  {
    print("Given Number Is Prime Number");
  }
  else
  {
    print("Given Number Is Not Prime Number");
  }
}