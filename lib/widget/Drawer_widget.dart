import 'package:first_app_for_test/applocal.dart';
import 'package:first_app_for_test/main.dart';
import 'package:first_app_for_test/provider/drawerprovider.dart';
import 'package:first_app_for_test/screen/DrawerScreen/ContactUs.dart';
import 'package:first_app_for_test/screen/DrawerScreen/Franchise.dart';
import 'package:first_app_for_test/screen/DrawerScreen/Galary.dart';
import 'package:first_app_for_test/screen/DrawerScreen/PrivacyandPolicy.dart';
import 'package:first_app_for_test/screen/DrawerScreen/TermsAndConditions.dart';
import 'package:first_app_for_test/screen/DrawerScreen/ordersHistory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  String lang;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getPref();
  }

  Future getPref() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      lang = sharedPreferences.getString("lang");
      sharedPreferences.commit();
    });
  }

  @override
  Widget build(BuildContext context) {
    DrawerProvider drawerProvider =
        Provider.of<DrawerProvider>(context, listen: false);

    return Drawer(
      backgroundColor: Color(0xffbf942e),
      child: ListView(
        shrinkWrap: true,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black38,
            ),
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset('lib/assets/Shraims_Logo.jpg'),
            ),
            accountName: Text('data'),
            accountEmail: Text('data'),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: drawerProvider.drawerscreentitle.length,
                itemBuilder: (_, i) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(
                          AppLocalizations.of(context).translate(drawerProvider
                              .drawerscreentitle[i].screenDrawertitleEn),
                          style: TextStyle(fontSize: 15),
                        ),
                        onTap: () {
                          ListTileOnTap(drawerProvider.drawerscreentitle[i].id);
                        },
                      ),
                      Divider(
                        height: 0,
                        color: Colors.black,
                        thickness: 1,
                        indent: 5,
                        endIndent: 25,
                      )
                    ],
                  );
                  //------------------------------
                }),
          ),
        ],
      ),
    );
  }

  ListTileOnTap(String i) {
    //------------------------------case0-------------------------------------------------------

    switch (i) {
      case '0':
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ContactUs()),
        );
        break;
      //------------------------------case1-------------------------------------------------------
      case '1':
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PrivacyAndPolicy()),
        );
        break;
      //------------------------------case2-------------------------------------------------------

      case '2':
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Galary()),
        );
        break;

      case '3': //------------------------------case3-------------------------------------------------------

        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TermsAndConditions()),
        );
        break;
      //------------------------------case4-------------------------------------------------------

      case '4':
        case4();

        break;
      //------------------------------case5-------------------------------------------------------

      case '5':
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OrdersHistory()),
        );
        break;
      //------------------------------case6-------------------------------------------------------

      case '6':
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Franchise()),
        );
        break;
      //------------------------------case7-------------------------------------------------------

      case '7':
        break;
      default:
    }
  }

  case4() {
    if (lang.toString() == "en") {
      MyApp.setLocale(context, Locale('fr', ''));
    } else {
      MyApp.setLocale(context, Locale('en', ''));
    }
    Navigator.pop(context);
  }
}
