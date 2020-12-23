import 'package:flutter/material.dart';

class FormApp extends StatefulWidget {
  @override
  _FormAppState createState() => _FormAppState();
}

class _FormAppState extends State<FormApp> {
  var name;
  var lastname;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('form'),
      ),
      body: Container(
        child: Form(
            key: _formkey,
            child: Column(
              children: [
                buildName(),
                buildlastName(),
                RaisedButton(
                    child: Text('Submit'),
                    color: Colors.blueAccent[700],
                    onPressed: () {
                      if (!_formkey.currentState.validate()) {
                        return 'complete all fields';
                      }
                      _formkey.currentState.save();
                      print(lastname);
                    })
              ],
            )),
      ),
    );
  }

  Widget buildName() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Name',
        labelText: 'Please enter name',
      ),
      maxLength: 25,
      validator: (String value) {
        if (value.isEmpty) {
          return 'enter name';
        }
      },
      onSaved: (String value) {
        if (value.isEmpty) {
          return 'Please enter the name';
        }
        name = value;
      },
    );
  }

  Widget buildlastName() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Please enter last name', hintText: 'tiger'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Last name';
        }
      },
      onSaved: (String value) {
        if (value.isEmpty) {
          return 'Please enter last name';
        }
        lastname = value;
      },
    );
  }
}
