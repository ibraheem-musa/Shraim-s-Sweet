import 'package:first_app_for_test/applocal.dart';
import 'package:first_app_for_test/widget/Drawer_widget.dart';
import 'package:first_app_for_test/widget/NavigationBar_widget.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PrivacyAndPolicy extends StatefulWidget {
  const PrivacyAndPolicy({ key }) : super(key: key);

  @override
  State<PrivacyAndPolicy> createState() => _PrivacyAndPolicyState();
}

class _PrivacyAndPolicyState extends State<PrivacyAndPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(AppLocalizations.of(context).translate('PrivacyandPolicy')),
            backgroundColor: HexColor("#bf942e")),
        body: Container(),
        
        );
  }
}
