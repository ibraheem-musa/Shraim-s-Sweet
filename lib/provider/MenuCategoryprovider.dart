import 'package:first_app_for_test/model/MenuCatogry.dart';
import 'package:flutter/cupertino.dart';



class MenuCategoryProvider with ChangeNotifier{
List<MenuCatogry> menuCategory=[
MenuCatogry(id: 0,image: 'lib/assets/HomescreenIcon/speciality_icon.png',name: 'Specialty',logoImage: 'lib/assets/HomescreenIcon/icon-01.jpg'),
MenuCatogry(id: 1,image: 'lib/assets/HomescreenIcon/desert_icon.png',name: 'Desserts', logoImage: 'lib/assets/HomescreenIcon/icon-02.jpg'    ),
MenuCatogry(id: 2,image: 'lib/assets/HomescreenIcon/drink_icon.png',name: 'Drinks',  logoImage: 'lib/assets/HomescreenIcon/icon-03.jpg'      ),
MenuCatogry(id: 3,image: 'lib/assets/HomescreenIcon/snacks_icon.png',name: 'Snacks',  logoImage: 'lib/assets/HomescreenIcon/icon-04.jpg'     ),
MenuCatogry(id: 4,image: 'lib/assets/HomescreenIcon/family_plates_icon.png',name: 'family',logoImage: 'lib/assets/HomescreenIcon/icon-05.jpg'),


];

}