import 'package:first_app_for_test/main.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var loginformkey = GlobalKey<FormState>();

  String userEmail;
  String userPassowrd;

bool islogen=true;
  CheckifTheTextBoxEmpty() {
    if (!loginformkey.currentState.validate()) {
      return null;
    } else {
      loginformkey.currentState.save();
      if (userEmail == "1" && userPassowrd == "1") {
        
         Navigator.pushNamed(context,nameroute.nameRouote_HomeScreen,
         arguments: islogen
         );
      } else {

      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffbf942e),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000.0),
                    child: 
                        Image.asset("lib/assets/Shraims_Logo.jpg" ,height:MediaQuery.of(context).size.height/4 ,),
                     
                   ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0,30),
                child: Text(
                  "Shraim's Sweet",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Form(
                key: loginformkey,
                child: Wrap(
                  runSpacing: 10,
                  children: [
                    //-----------Theme for TextFormFields---------------------
                    Theme(
                      data: ThemeData(
                        primaryColor: Colors.black,
                        focusColor: Colors.grey,
                        hintColor: Colors.black,
                      ),
                      child: Wrap(
                        runSpacing: 10,
                        children: [
                          //-----------enter your username---------------------
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "enter your Email",
                                labelStyle: TextStyle(color: Color(0xAA222222)),
                                fillColor: Colors.amber,
                                // hoverColor: Colors.amber,
                                // hintText: "Enter Email",
                                hintStyle: TextStyle(color: Color(0xAA222222)),
    
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "this value is mandatory";
                                }
                                return null;
                              },
                              onSaved: (newvalue) {
                                userEmail = newvalue;
                              },
                            ),
                          ),
                          //-----------enter your passowrd---------------------
    
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              obscureText:true,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                labelText: "enter your passowrd",
                                labelStyle: TextStyle(color: Color(0xAA222222)),
                                fillColor: Colors.amber,
                                 // hoverColor: Colors.amber,
                                // hintText: "Enter Email",
                                hintStyle: TextStyle(color: Color(0xAA222222)),
    
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "this value is mandatory";
                                }
                                return null;
                              },
                              onSaved: (newvalue) {
                                userPassowrd = newvalue;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    //-----------end Theme for TextFormFields---------------------
    
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (bo) {},
                              ),
                              Text("stay login")
                            ],
                          ),
                          //-----------RaisedButton login---------------------
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                primary: Colors.black,
                                backgroundColor: Colors.black,
                                fixedSize: Size(200, 35)),
                            onPressed: () {
                              CheckifTheTextBoxEmpty();
                            },
                            child: Text('Log in',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xffbf942e))),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      primary: Colors.black,
                                      fixedSize: Size(120, 20)),
                                  //----------------------
                                  onPressed: () {},
                                  //----------------------
                                  child: Text('sign up',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black))),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(color: Colors.black54),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
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
