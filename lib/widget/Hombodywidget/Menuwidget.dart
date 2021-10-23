import 'package:first_app_for_test/applocal.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({ key }) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  
  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            
              child: Row(
                        children: <Widget>[
                         
                         
                              CardFormenu(image: 'lib/assets/HomescreenIcon/speciality_icon.png',text: 'Specialty',),
                          CardFormenu(image: 'lib/assets/HomescreenIcon/desert_icon.png',text: 'Desserts',),
                          CardFormenu(image: 'lib/assets/HomescreenIcon/drink_icon.png',text: 'Drinks',),
                          CardFormenu(image: 'lib/assets/HomescreenIcon/snacks_icon.png',text: 'Snacks',),
                          CardFormenu(image: 'lib/assets/HomescreenIcon/family_plates_icon.png',text: 'family',),
                        ],
              ),
            );
          
  }
}

class CardFormenu extends StatelessWidget {
  String image;
  String text;
  CardFormenu({this.image,this.text});

  @override
  Widget build(BuildContext context) {
    return Card( 
      shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50.0),
  ),
  color: Color(0xAABF942E),
   child: Container(height:180 ,width:120,child: Column(
                            children: [
                              ClipRRect(borderRadius :BorderRadius.circular(20) ,child: Image.asset(image,fit: BoxFit.contain,)),
                               SizedBox(height:20,),
                              Text(
                                 AppLocalizations.of(context).translate(text)
                              ,style: TextStyle(fontSize: 16,),)
                            ],
                          ),),);
  }
}