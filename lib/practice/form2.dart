import 'package:flutter/material.dart';

class FormAppTwo extends StatefulWidget {
  @override
  _FormAppTwoState createState() => _FormAppTwoState();
}

class _FormAppTwoState extends State<FormAppTwo> {
  final formkeys = GlobalKey<FormState>();
  TextEditingController names = TextEditingController();
  TextEditingController emails = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form 2'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          Form(
              key: formkeys,
              child: Column(
                children: [
                  TextFormField(
                    controller: names,
                    decoration: inputdecor('Enter your name'),
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'Please fill name';
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: inputdecor('Fill email'),
                    controller: emails,
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'please enter email';
                      }
                      if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(val)) {
                        return 'enter valid email';
                      }
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: inputdecor('Enter your password'),
                    obscureText: true,
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'fill password';
                      }
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  RaisedButton(
                      child: Text('Submit'),
                      onPressed: () {
                        if (!formkeys.currentState.validate()) {
                          return 'Please enter all fields';
                        }
                        formkeys.currentState.save();
                      })
                ],
              ))
        ],
      ),
    );
  }
}

InputDecoration inputdecor(String text) {
  return InputDecoration(
      hintText: text,
      hintStyle: TextStyle(color: Colors.brown),
      contentPadding: EdgeInsets.all(8),
      focusColor: Colors.yellow,
      fillColor: Colors.green,
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.green)),
      errorBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red)));
}
