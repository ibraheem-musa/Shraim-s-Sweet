import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatefulWidget {
  const SocialMedia({key}) : super(key: key);

  @override
  _SocialMediaState createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xffbf942e),
            offset: Offset(-5.0, 5.0),
            blurRadius: 10.0,
            spreadRadius: 2),
      ]),
  
         
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Center(
               child: Wrap(children: [
                 Text("Shraim's Sweets",style: TextStyle(fontSize:25,decorationThickness: 20),),
                 
               ],),
             ),
             Text(" On social media",style: TextStyle(fontSize: 20,decorationThickness: 20),),
             SizedBox(height: 50,),
             Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _facebooklaunchURL();
                      },
                      child: Image.asset(
                        "lib/assets/F.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        _instgramlaunchURL();
                      },
                      child: Image.asset(
                        "lib/assets/I.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        _tiktoklaunchURL();
                      },
                      child: Image.asset(
                        "lib/assets/T.png",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ],
                ),
              ),
           ],
         ),
       
    );
  }

  _facebooklaunchURL() async {
    const url = 'https://www.facebook.com/shraimssweets';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _instgramlaunchURL() async {
    const url = 'https://www.instagram.com/shraimssweets/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _tiktoklaunchURL() async {
    const url = 'https://www.tiktok.com/@shraimssweets';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
