import 'package:flutter/material.dart';


import '61_Restaurantscreen.dart';
import '62_simplealert.dart';
import '63_alertdialogwithpositivenegative.dart';
import '64_alertdialogwithlistofcities.dart';
import '65_exitalert.dart';
import '66_select_date_on_button_click_event.dart';
import '67_ profileandlogoutoptioninoptionsmenu.dart';
import '68_displayedit_view_delete_options.dart';
import '69_gmailClone.dart';
import '70_bottomnavigationwith3tabs.dart';
import '71_NavigationDrawer.dart';
import '72_PhonecallApp.dart';
import '73_displaySplashScreen.dart';
import '74_oneactivitytoanotheractivity.dart';
import '75_ManageActivityLifecycle.dart';
import '76_sum.dart';
import '77_CallandSmsviaurllauncher.dart';
import '78_Offlinedatabase.dart'; // Use a valid file name without starting with a number






void main()
{
  runApp( MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: menuscreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}
