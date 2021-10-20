import 'package:first_app_for_test/applocal.dart';
import 'package:first_app_for_test/widget/Drawer_widget.dart';
import 'package:first_app_for_test/widget/NavigationBar_widget.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Galary extends StatefulWidget {
  const Galary({ key }) : super(key: key);

  @override
  State<Galary> createState() => _GalaryState();
}

class _GalaryState extends State<Galary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(AppLocalizations.of(context).translate('galary')),
            backgroundColor: HexColor("#bf942e")),
        body: Container(),
        
        );
  }
}
