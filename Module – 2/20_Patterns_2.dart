//20_Patterns_2

import 'dart:io';

void main()
{
  int n = 5 ,i,j;

  for(i=1 ; i<=n ; i++)//loop1
  {
    for(j=1 ; j<=i ; j++)//loop2
    {
      stdout.write(j);//print
    }
    stdout.writeln();//print
  }
}