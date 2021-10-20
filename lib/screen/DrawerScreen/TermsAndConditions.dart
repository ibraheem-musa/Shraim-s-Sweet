import 'package:first_app_for_test/applocal.dart';
import 'package:first_app_for_test/widget/Drawer_widget.dart';
import 'package:first_app_for_test/widget/NavigationBar_widget.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({  key }) : super(key: key);

  @override
  _TermsAndConditionsState createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(AppLocalizations.of(context).translate('TermsandCondition')),
            backgroundColor: HexColor("#bf942e")),
        body: Container(),
       
        );
  }
}
