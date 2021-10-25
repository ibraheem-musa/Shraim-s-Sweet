import 'package:first_app_for_test/applocal.dart';
import 'package:first_app_for_test/provider/MenuCategoryprovider.dart';
import 'package:first_app_for_test/provider/MenuSubCategoryprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuCategoryForsupCategory extends StatefulWidget {
  const MenuCategoryForsupCategory({key}) : super(key: key);

  @override
  _MenuCategoryForsupCategoryState createState() =>
      _MenuCategoryForsupCategoryState();
}

class _MenuCategoryForsupCategoryState
    extends State<MenuCategoryForsupCategory> {
  String dropdownValue;
  @override
  Widget build(BuildContext context) {
    MenuCategoryProvider menuCategoryProvider =
        Provider.of<MenuCategoryProvider>(context, listen: false);
    MenuSubCategoryProvider menuSubCategoryProvider =
        Provider.of<MenuSubCategoryProvider>(context, listen: false);

        
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffBF942E),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                child: ListView.builder(
                    itemCount: menuCategoryProvider.drawerscreentitle.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return cercilCard(
                        image: menuCategoryProvider
                            .drawerscreentitle[index].logoImage,
                        text:
                            menuCategoryProvider.drawerscreentitle[index].name,
                      );
                    }),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: menuSubCategoryProvider.drawerscreentitle.length,
                  itemBuilder: (_, i) {
                  return CardForsubcatogry(
                    image: menuSubCategoryProvider.drawerscreentitle[i].image,
                    price: menuSubCategoryProvider.drawerscreentitle[i].price,
                    textforname: menuSubCategoryProvider.drawerscreentitle[i].name,

                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class cercilCard extends StatelessWidget {
  String text;
  String image;
  cercilCard({this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(50.0),
        // ),
        color: Colors.transparent,
        child: Container(
          height: MediaQuery.of(context).size.height / 4,
          width: 100,
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(50),
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
      ),
    );
  }
}

class CardForsubcatogry extends StatelessWidget {
  String image;
  String textforname;
  int price;
  CardForsubcatogry({this.image, this.textforname, this.price});

  @override
  Widget build(BuildContext context) {
    return  Center(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                      color: Colors.amber[200],
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
              height: MediaQuery.of(context).size.height /6,
              width: MediaQuery.of(context).size.width ,
                           
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Image.asset(
                        image,
                        height: MediaQuery.of(context).size.height/5,
                        width: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          textforname,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          price.toString()+' \$',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ],
                ),
              
            ),
          ),
        );
  }
}
