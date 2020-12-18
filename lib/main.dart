import 'package:flutter/material.dart';
import 'dart:math';
import './practice/random.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Random random = new Random();
  //int randomNumber = random.nextInt(100);//this didnt work
  int randoms(int numss) {
    return random.nextInt(numss);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          'lion',
        ),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new ListView(
            children: [
              ListTile(
                title: Text('Random Number'),
                leading: Icon(
                  Icons.radio_button_checked,
                  size: 24,
                  color: Colors.green,
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Randoms())),
              )
            ],
          ),
        ),
      ),
    );
  }
}
