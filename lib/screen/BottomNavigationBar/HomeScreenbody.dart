import 'package:first_app_for_test/applocal.dart';
import 'package:first_app_for_test/widget/Hombodywidget/ComingSoonwidget.dart';
import 'package:first_app_for_test/widget/Hombodywidget/Galary.dart';
import 'package:first_app_for_test/widget/Hombodywidget/HappyCustomers.dart';
import 'package:first_app_for_test/widget/Hombodywidget/Menuwidget.dart';
import 'package:first_app_for_test/widget/Hombodywidget/PadingTextForHomScreen.dart';
import 'package:first_app_for_test/widget/Hombodywidget/SpecialtodayWidget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({key}) : super(key: key);

  @override
  _HomeScreenBodyState createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      child: ListView(
        children: <Widget>[
          //---------1 Spicial Today--------------
          TextForTitle(
            image: 'lib/assets/HomescreenIcon/Special today-01.jpg',
            text: AppLocalizations.of(context).translate('SpecialToday'),
          ),

          Specialtoday(),
          //-------------2 Menu-----------------------------------------
          TextForTitle(
            image: 'lib/assets/HomescreenIcon/Special today-01.jpg',
            text: AppLocalizations.of(context).translate('Menu'),
          ),

          MenuWidget(),
          //---------------------------Coming Soon-------------------------------------
          TextForTitle(
            image: 'lib/assets/HomescreenIcon/soon-01.jpg',
            text: AppLocalizations.of(context).translate('Coming Soon'),
          ),


          ComingSoon(),

          //----------------Gallery---------------------------------
          TextForTitle(
            image: 'lib/assets/HomescreenIcon/Gallery-02.jpg',
            text:AppLocalizations.of(context).translate('Gallery') ,
          ),


          Galary(),
          //------------------Happy Customers-------------------------------
          TextForTitle(
            image: 'lib/assets/HomescreenIcon/Special today-01.jpg',
            text: AppLocalizations.of(context).translate('HappyCustomers'),
          ),
 
          HappyCustomers(),
        ],
      ),
    );
  }
}
