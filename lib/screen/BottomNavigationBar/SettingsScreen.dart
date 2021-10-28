import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({ key }) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}
  bool isSwitched = false;

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffbf942e),
      height: MediaQuery.of(context).size.height,
      width:MediaQuery.of(context).size.width ,
      child: Column(children: [
           
           Container(
             width: MediaQuery.of(context).size.width,
              height: 60,
              child: OutlinedButton(onPressed: (){},style:OutlinedButton.styleFrom(
                primary: Colors.black
              ) , child: Row(children: [Text("Account info",style: TextStyle(color:Colors.black ),),  Expanded(child: SizedBox()), Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,) ],)),

             ),
               Container(
             width:  MediaQuery.of(context).size.width,
              height: 60,
              child: OutlinedButton(onPressed: (){},style:OutlinedButton.styleFrom(
                primary: Colors.black
              ) , child: Row(children: [Text("Change email",style: TextStyle(color:Colors.black ),),  Expanded(child: SizedBox()), Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,) ],)),

             ),
             Container(
             width:  MediaQuery.of(context).size.width,
              height: 60,
              child: OutlinedButton(onPressed: (){},style:OutlinedButton.styleFrom(
                primary: Colors.black
              ) , child: Row(children: [Text("Change passwword",style: TextStyle(color:Colors.black ),),  Expanded(child: SizedBox()), Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,) ],)),

             ),

             Divider( height: 20,thickness: 1,color: Colors.black,endIndent: 5,indent: 5,),

             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(width: MediaQuery.of(context).size.width,height: 80,child: Row(children: [Text("Notification ",style: TextStyle(color:Colors.black,fontSize:16),),  Expanded(child: SizedBox()),
               Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
            activeTrackColor: Colors.white,
            activeColor: Color(0xff222222),
          ),
        
                ],)),
             )

      ],),

    );
  }
}