import 'package:flutter/material.dart';
import 'dart:math';
import './practice/random.dart';
import './practice/http.dart';
import './practice/http2.dart';
import './practice/http3.dart';
import './practice/charts.dart';

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

  List aa = ['lion'];
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
              ),
              ListTile(
                title: Text('Http github'),
                leading: Icon(
                  Icons.card_giftcard,
                  size: 24,
                  color: Colors.red,
                ),
                onTap: () => Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => HttpApp())),
              ),
              ListTile(
                title: Text('Http inside'),
                leading: Icon(
                  Icons.card_giftcard,
                  size: 24,
                  color: Colors.red,
                ),
                onTap: () => Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => HttpTwo())),
              ),
              ListTile(
                title: Text('Http three avatar'),
                leading: Icon(
                  Icons.card_giftcard,
                  size: 24,
                  color: Colors.red,
                ),
                onTap: () => Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => HttpThree())),
              ),
              ListTile(
                title: Text('Http three avatar'),
                leading: Icon(
                  Icons.card_giftcard,
                  size: 24,
                  color: Colors.red,
                ),
                onTap: () => Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => DonutPieChart())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
