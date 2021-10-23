import 'package:first_app_for_test/applocal.dart';
import 'package:first_app_for_test/widget/Drawer_widget.dart';
import 'package:first_app_for_test/widget/NavigationBar_widget.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _updated();
  }

  double _width = 200;
  double _height = 200;
  double _updated() {
    setState(() {
      _width = 400;
      _height = 400;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(AppLocalizations.of(context).translate('ContactUs')),
          backgroundColor: HexColor("#bf942e")),
      body: Center(
        child: AnimatedContainer(
            color: Colors.amber,
            width: _width,
            height: _height,
            duration: Duration(milliseconds: 5000),
            child: Center(child: Text("data"))),
      ),
    );
  }
}
