import 'package:flutter/material.dart';
import 'dart:math';
import './practice/random.dart';
import './practice/http.dart';
import './practice/http2.dart';
import './practice/http3.dart';
import './practice/charts.dart';
import './practice/charts2.dart';
import './practice/datatable.dart';
import './practice/datable2.dart';
import './practice/form.dart';
import './practice/form2.dart';
import './animation/flare1.dart';

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
              ListTile(
                title: Text('Data Table Main'),
                leading: Icon(
                  Icons.data_usage,
                  size: 24,
                  color: Colors.blue[800],
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DataTables())),
              ),
              ListTile(
                  title: Text('Chart and Http'),
                  leading: Icon(
                    Icons.link_off,
                    size: 24,
                    color: Colors.blueAccent,
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChartandHttp()))),
              ListTile(
                title: Text('Data Table'),
                leading: Icon(
                  Icons.trip_origin,
                  size: 24,
                  color: Colors.yellow[800],
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DataTableTwo())),
              ),
              ListTile(
                  title: Text('Form'),
                  leading: Icon(
                    Icons.no_cell_rounded,
                    size: 24,
                    color: Colors.yellowAccent,
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FormApp()))),
              ListTile(
                title: Text('Form Two'),
                leading: Icon(
                  Icons.bolt,
                  size: 24,
                  color: Colors.orange[800],
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FormAppTwo())),
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                title: Text('Smiley animation'),
                leading: Icon(
                  Icons.change_history,
                  size: 24,
                  color: Colors.brown[800],
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FlareApp())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
