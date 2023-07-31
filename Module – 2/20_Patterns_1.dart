//20_Patterns_1

import 'dart:io';

void main()
{

  int n = 5 ,i,j;
  for(i=1; i<=n ; i++)//loop1
  {
    for(j=1 ; j<=i ; j++)//loop2
    {
      stdout.write("*");
    }
    stdout.writeln();
  }
}