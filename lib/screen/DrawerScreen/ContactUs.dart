import 'package:first_app_for_test/applocal.dart';
import 'package:first_app_for_test/widget/Drawer_widget.dart';
import 'package:first_app_for_test/widget/NavigationBar_widget.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({  key }) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( 
//           actions: <Widget>[
//     IconButton(
//       icon: Icon(
//         Icons.arrow_back,
//         color: Colors.white,
//       ),
//       onPressed: () {
// Navigator.pop(context);      },
//     )
//   ],
       title: Text(AppLocalizations.of(context).translate('ContactUs')),
            backgroundColor: HexColor("#bf942e")),
        body: Container(color: Colors.blue,),
       
        );
  }
}