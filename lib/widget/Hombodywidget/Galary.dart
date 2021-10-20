import 'package:flutter/material.dart';

class Galary extends StatelessWidget {
  const Galary({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CardForGalary(image: 'lib/assets/HomescreenIcon/w.jpg',text: 'sweet',),
           CardForGalary(image: 'lib/assets/HomescreenIcon/L.jpg',text: 'Lolipop',),
            CardForGalary(image: 'lib/assets/HomescreenIcon/D.jpg',text: 'desserts',),
             CardForGalary(image: 'lib/assets/HomescreenIcon/w.jpg',text: 'sweet',),
              
        ],
      ),
    );
  }
}

class CardForGalary extends StatelessWidget {
  String image;
  String text;
  CardForGalary({this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: Color(0xAABF942E),
      child: Container(
        height: MediaQuery.of(context).size.height/3,
        width: MediaQuery.of(context).size.height/2.5,
        child: Column(
          children: [
            Container(height: MediaQuery.of(context).size.height/4,width: MediaQuery.of(context).size.height/2.5,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
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
