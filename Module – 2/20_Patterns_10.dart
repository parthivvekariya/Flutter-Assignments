//20_Patterns_10

import 'dart:io';

void main()
{
  int n = 5 ,i,j, k=1;


  for(i=1 ; i<=n ; i++)
  {
    for(j=1 ; j<=i ; j++)
    {
      stdout.write(k);
      stdout.write(" ");
      k++;
    }
    stdout.writeln();
  }
}