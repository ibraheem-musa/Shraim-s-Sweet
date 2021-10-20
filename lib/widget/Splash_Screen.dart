import 'package:first_app_for_test/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  const Splash({key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override


  @override
  Widget build(BuildContext context) {
    return  SplashScreen(
      seconds: 4,
      navigateAfterSeconds:  HomeScreen(),
      title: Text("Shraim's Sweets",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
      image: new Image.asset('lib/assets/Shraims_Logo.jpg'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 100.0,
      loaderColor: Color(0xffbf942e)
    );
  }
}
