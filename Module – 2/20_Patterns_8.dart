//20_Patterns_8

import 'dart:io';

void main()
{
  int n = 5 ,i,j;

  
  for(i=1; i<=n ; i++)
  {
    for(j=i ; j<n ; j++)
    {
      stdout.write(" ");
    }
    for(j=1 ; j<=i ; j++)
    {
      stdout.write("$j ");
    }

    stdout.writeln();
  }
}
