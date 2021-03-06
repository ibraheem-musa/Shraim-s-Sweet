import 'package:first_app_for_test/Colors.dart';
import 'package:first_app_for_test/model/MenuProduct.dart';
import 'package:first_app_for_test/provider/CategoryImageprovaider.dart';
import 'package:flutter/material.dart';

import 'package:first_app_for_test/applocal.dart';
import 'package:first_app_for_test/provider/MenuCategoryprovider.dart';
import 'package:first_app_for_test/provider/MenuSubCategoryprovider.dart';

import 'package:provider/provider.dart';

class OrdarScreen extends StatefulWidget {
  const OrdarScreen({key}) : super(key: key);

  @override
  _OrdarScreenState createState() => _OrdarScreenState();
}

class _OrdarScreenState extends State<OrdarScreen> {
 
  @override
  Widget build(BuildContext context) {

    MenuCategoryProvider menuCategoryProvider =
        Provider.of<MenuCategoryProvider>(context, listen: false);

    MenuProductProvider menuProductProvider =
        Provider.of<MenuProductProvider>(context, listen: false);
CategoryImageprocaider categoryImageprocaider=
Provider.of<CategoryImageprocaider>(context, listen: false);
    int idForcat =0;
     
     List<MenuProduct> butithear;

  //  if(idForcat==null){
  //    idForcat=1;
  //     }

  //   List<MenuProduct> filtercatgory;

  //     filtercatgory = menuProductProvider.menuProduct.where((elemnt2) {
  //       return elemnt2.idCategory == idForcat;
  //     }).toList();

    return Container(
      color: ColorForDesign().black,
      child: Container(
        height: MediaQuery.of(context).size.height,
        
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5,
              child: ListView.builder(
                  itemCount: menuCategoryProvider.menuCategory.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                      setState(() {
                        idForcat=index;
                        print(idForcat);
                       
                      }); 
        //                 Navigator.pushNamed(context,'/MenuCategoryForsupCategory',
        //  arguments: menuCategoryProvider.menuCategory[index].id );
                          },
                      child: cercilCard(
                        image: categoryImageprocaider.categoryImage[index].logoImage,
                        text:
                            menuCategoryProvider.menuCategory[index].name,
                      ),
                    );
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: menuProductProvider.getfifiler(idForcat).length,
                  itemBuilder: (_, i) {
                    return GestureDetector(
                      onTap: () {
                        print(idForcat);
                                

                      },
                      child: CardForsubcatogry(
                        image: menuProductProvider.getfifiler(idForcat)[i].logoimage,
                        price: menuProductProvider.getfifiler(idForcat)[i].price,
                        textforname: menuProductProvider.getfifiler(idForcat)[i].name,
                      ),
                    );
                  }),
            )
          ],
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
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width/4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    image,
                    height:MediaQuery.of(context).size.height / 10 ,
                    fit: BoxFit.contain,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height/30,
              ),
              Text(
                AppLocalizations.of(context).translate(text),
                style: TextStyle(
                  color: ColorForDesign().Gold,
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber[200],
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          height: MediaQuery.of(context).size.height / 6,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(
                  image,
                  height: MediaQuery.of(context).size.height / 5,
                  width: 150,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Wrap(
                      children: [
                        Text(
                          textforname,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Text(
                      price.toString() + ' \$',
                      style: TextStyle(fontSize: 20,),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
