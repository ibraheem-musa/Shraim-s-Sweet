import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotifficationScreen extends StatefulWidget {
  const NotifficationScreen({key}) : super(key: key);

  @override
  _NotifficationScreenState createState() => _NotifficationScreenState();
}

class _NotifficationScreenState extends State<NotifficationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffBF942E),
      child: ListView.builder(
        itemBuilder: (_, i) {
          return Card(
            
              child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5,0, 3),
                    child: Text('date',style: TextStyle(color: Color(0xaaBF942E),fontSize: 12),),
                  ),
                  
                ],
              ),
              Container(
                child: ListTile(
                  title: Text('Notifecation from nobody'),
                  subtitle: Text('this is you ferst notification '),
                ),
              ),
              
                                    
                      Row(
                        mainAxisAlignment : MainAxisAlignment.end ,
                        children: [
                          
                         
                            TextButton(onPressed: (){}, child:Row(
                              children: [
                                Text('see more',style: TextStyle(color: Color(0xffBF942E)),),
                                Icon(Icons.arrow_forward_ios, size: 20,color:Color(0xffBF942E) ,),
                              ],
                             )
                                          
                                        ),
                         
                        ],
                      ),

              // Icon(Icons.ac_unit),
            ],
          ));
        },
        itemCount: 3,
      ),
    );
  }
}
