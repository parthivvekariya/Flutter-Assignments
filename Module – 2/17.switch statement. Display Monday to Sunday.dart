import 'dart:io';

void main()
{

  print('Select Your Number');
  var num = int.parse(stdin.readLineSync()!);

  switch(num)
  {
    case 1:print('monday');
    break;

    case 2:print('tuesday');
    break;

    case 3:print('wednesday');
    break;

    case 4:print('wednesday');
    break;

    case 5:print('thursday');
    break;

    case 6:print('friday');
    break;

    case 7:print('saturday');
    break;

    default:print('Number is not valid');
    break;
  }

}