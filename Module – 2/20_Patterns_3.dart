//20_Patterns_3


import 'dart:io';

void main()
{
  int n = 5 ,i,j;

  
  for(i=1 ; i<=n ; i++)
  {
    for(j=1 ; j<=i ; j++)
    {
      stdout.write(i);
    }
    stdout.writeln();
  }
}