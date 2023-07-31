import 'dart:io';


void main()
{
  //get input from user
  print("Enter a number");
  int n = int.parse(stdin.readLineSync()!);

  int first,last,sum=0;
  if(n>=10)
  {
    last = n % 10;

    while(n>=10)
    {
      n = (n/10).floor();
    }
    first = n;


    sum = first + last;
    print("Total fo first and last digit is $sum");
  }
  else
  {
    print("in velid value $n");
  }

}