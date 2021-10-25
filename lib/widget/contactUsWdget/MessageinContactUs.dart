import 'package:flutter/material.dart';

class MessageandNot extends StatefulWidget {
  const MessageandNot({key}) : super(key: key);

  @override
  _MessageandNotState createState() => _MessageandNotState();
}

class _MessageandNotState extends State<MessageandNot> {
  String Name;
  String Email;
  String phone;
  String supject;
  String Message;
var loginformkey = GlobalKey<FormState>();
   CheckifTheTextBoxEmpty() {
    if (!loginformkey.currentState.validate()) {
      return null;
    } else {
      loginformkey.currentState.save();
    
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Color(0xffbf942e),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: loginformkey,
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Your Name",
                    labelStyle: TextStyle(color: Color(0xAA222222)),
                    fillColor: Colors.amber,
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
                    Name = newvalue;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Your Email",
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
                    Email = newvalue;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Your Phone",
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
                    phone = newvalue;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "the message Subject ...",
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
                    supject = newvalue;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  maxLines: 5, 
                  keyboardType: TextInputType.multiline,
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                   decoration: InputDecoration(
                    labelText: "Message .....",
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
                    Message = newvalue;
                  },
                ),
              ),
              OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                primary: Colors.black,
                                backgroundColor: Colors.black,
                                fixedSize: Size(200, 35)),
                            onPressed: () {
                              CheckifTheTextBoxEmpty();
                            },
                            child: Text('Send',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xffbf942e))),
                          ),
                        
            ],
          ),
        )),
      ),
    );
  }
}
