import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
 
  bool x=false;
  // if(sentindex==2)
  // {
  //   setState(() {
    

  //   });

  // }
 var sentindex ;
  int curentIndex = 0;
  final tabe = [
    HomeScreenBody(),
    CartScreen(),
    OrdarScreen(),
    NotifficationScreen(),
    SettingScreen(),
  ];

   


  final widgetname=[
      "Home",
    "Cartwidget",
    "ordernowwidget",
    "notificationwidget",
    "settingwidget",

  ];
   

  @override
  Widget build(BuildContext context) {
    
//  var sentindex =  ModalRoute.of(context).settings.arguments as int;
 
//  if(sentindex==2){
//    setState(() {
//      curentIndex=2;
//        x=true;
      
//    });
//  }
    
    
  

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
            title: Text(
              AppLocalizations.of(context).translate(widgetname[curentIndex]),
              
            ),
            backgroundColor: HexColor("#bf942e")),

        body: tabe[curentIndex],

        drawer: DrawerWidget(),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xffbf942e),
          color: Color(0xff222222),
          items: <Widget>[
            Icon(Icons.home, color: Color(0xffbf942e), size: 30),
            Icon(Icons.shopping_cart_rounded,
                color: Color(0xffbf942e), size: 30),
            Icon(Icons.account_balance_wallet_outlined,
                color: Color(0xffbf942e), size: 30),
            Icon(Icons.notifications, color: Color(0xffbf942e), size: 30),
            Icon(Icons.settings, color: Color(0xffbf942e), size: 30)
          ],
          animationDuration: Duration(milliseconds: 250),
          animationCurve: Curves.linearToEaseOut,
          height: 50,
          onTap: (index) { 

             setState(() {
             curentIndex =index;
            });
    //         setState(() {
    //           x=false;
    //           sentindex=null;
    //         });
    //       print(sentindex);
    //             if (sentindex !=null ) {
    //   setState(() {
    //     curentIndex = index;
    //     sentindex=null;
    //     print(curentIndex.toString()+"  "  +index.toString()+"  " +sentindex.toString()+"  " +"this is if no1");
    //   });

    // } else if(index !=2 ) {
    //  setState(() {
    //    curentIndex = index;
    //    print(curentIndex.toString()+"  "  +index.toString()+"  " +sentindex.toString()+"  " +"this is if no2");
    //  });
    //             } else if(index==2){
    //                setState(() {
    //    curentIndex = index;
    //    print(curentIndex.toString()+"  " +index.toString()+"  " +sentindex.toString()+"  " +"this is if no3");
    //  });
    //             }
             
            
             
          },
        ));
  }
}
