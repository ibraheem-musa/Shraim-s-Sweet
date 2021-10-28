import 'package:first_app_for_test/applocal.dart';
import 'package:first_app_for_test/screen/LoginScreen.dart';
import 'package:first_app_for_test/widget/Hombodywidget/ComingSoonwidget.dart';
import 'package:first_app_for_test/widget/Hombodywidget/Galary.dart';
import 'package:first_app_for_test/widget/Hombodywidget/HappyCustomers.dart';
import 'package:first_app_for_test/widget/Hombodywidget/Menuwidget.dart';
import 'package:first_app_for_test/widget/Hombodywidget/PadingTextForHomScreen.dart';
import 'package:first_app_for_test/widget/Hombodywidget/SpecialtodayWidget.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({key}) : super(key: key);

  @override
  _HomeScreenBodyState createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {

  bool islogin = false;
  bool islogindone ;
 //islogindone = ModalRoute.of(context).settings.arguments as bool;


  
  @override
  Widget build(BuildContext context) {

    return Container(
      height: double.maxFinite,
      child: ListView(
        children: <Widget>[
          islogin
              ? SizedBox(height: 0,)
              : Padding(
                padding: const EdgeInsets.fromLTRB(5, 8, 5, 2),
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbf942e)),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Padding(
                              //   padding: const EdgeInsets.all(12.0),
                              //   child: Center(child: Icon(Icons.person,size: 40,)),
                              // ),
                              Expanded(
                                child: Wrap(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                          " Log in or create account to get all User Permissions ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            
                                              fontSize: 20, color: Color(0xffbf942e))),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 6),
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(),
                                onPressed: () {
                                   Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()));
                                },
                                child: Text("Login",
                                    style: TextStyle(color: Color(0xffbf942e)))),
                          ),
                        )
                      ],
                    ),
                  ),
              ),

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
            text: AppLocalizations.of(context).translate('Gallery'),
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
