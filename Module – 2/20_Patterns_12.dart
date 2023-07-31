//20_Patterns_12

import 'dart:io';

void main()
{
  int n = 5 ,i,j;
  
  for(i=1 ; i<=n ; i++)
  {
    for(j=i ; j>=1 ; j--)
    {
      stdout.write(i*i);
      stdout.write(" ");
    }
    stdout.writeln();
  }
}
