import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_app_for_test/Colors.dart';
import 'package:first_app_for_test/applocal.dart';
import 'package:first_app_for_test/screen/BottomNavigationBar/Notifications.dart';
import 'package:first_app_for_test/screen/BottomNavigationBar/OrdarScreen.dart';
import 'package:first_app_for_test/screen/BottomNavigationBar/SettingsScreen.dart';
import 'package:first_app_for_test/widget/Drawer_widget.dart';
import 'package:first_app_for_test/screen/BottomNavigationBar/HomeScreenbody.dart';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'BottomNavigationBar/CartScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


 var sentindex ;
  int curentIndex = 0;

  

   


  final widgetname=[
      "Home",
    "Cartwidget",
    "ordernowwidget",
    "notificationwidget",
    "settingwidget",

  ];


   

  @override
  Widget build(BuildContext context) {
      var argumentchek = ModalRoute.of(context).settings.arguments as bool;

    final tabe = [
    HomeScreenBody(isLogingWithoutsherd: argumentchek, ),
    CartScreen(),
    OrdarScreen(),
    NotifficationScreen(),
    SettingScreen(),
  ];
     
          

    return Scaffold(
      backgroundColor: ColorForDesign().black,
        appBar: AppBar(
          centerTitle: true,
            title: Text(
              AppLocalizations.of(context).translate(widgetname[curentIndex]),
              
            ),
            backgroundColor: ColorForDesign().Gold),

        body: tabe[curentIndex],

        drawer: DrawerWidget(),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor:ColorForDesign().black,
          color:ColorForDesign().Gold,
          items: <Widget>[
            Icon(Icons.home, color: ColorForDesign().black ,size: 30),
            Icon(Icons.shopping_cart_rounded,
                color: ColorForDesign().black, size: 30),
            Icon(Icons.account_balance_wallet_outlined,
                color: ColorForDesign().black, size: 30),
            Icon(Icons.notifications, color: ColorForDesign().black, size: 30),
            Icon(Icons.settings, color: ColorForDesign().black, size: 30)
          ],
          animationDuration: Duration(milliseconds: 250),
          animationCurve: Curves.linearToEaseOut,
          height: 50,
          onTap: (index) { 

             setState(() {
             curentIndex =index;
            });
             
            
             
          },
        ));
  }
}
