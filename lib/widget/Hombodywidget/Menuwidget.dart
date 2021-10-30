import 'package:first_app_for_test/applocal.dart';
import 'package:first_app_for_test/main.dart';
import 'package:first_app_for_test/provider/MenuCategoryprovider.dart';
import 'package:first_app_for_test/screen/BottomNavigationBar/OrdarScreen.dart';
import 'package:first_app_for_test/screen/MenuCategoryScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({key}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    MenuCategoryProvider drawerProvider =
        Provider.of<MenuCategoryProvider>(context, listen: false);

    return Container(
      height: 190,
      child: ListView.builder(
          itemCount: drawerProvider.menuCategory.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, i) {
            return GestureDetector(

                onTap: () {

    
          Navigator.pushNamed(context,'/MenuCategoryForsupCategory',
         arguments: drawerProvider.menuCategory[i].id );
       
         
                },

                child: CardFormenu(
                  image: drawerProvider.menuCategory[i].image,
                  text: drawerProvider.menuCategory[i].name,
                ));
          }),
    )
     
        ;
  }
}

class CardFormenu extends StatelessWidget {
  String image;
  String text;
  CardFormenu({this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      color: Color(0xAABF942E),
      child: Container(
        height: 180,
        width: 120,
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              AppLocalizations.of(context).translate(text),
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
