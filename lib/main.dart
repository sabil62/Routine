import 'package:flutter/material.dart';

import 'package:timeTable/bloc/counter.dart';
import 'package:timeTable/bloc/counter2.dart';

import 'package:timeTable/provider/providerCounter.dart';

import 'package:timeTable/provider2/salaryProvider.dart';
import 'package:timeTable/provider3/playerOperation.dart';
import 'package:timeTable/provider3/playerProvider.dart';
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
import './practice/stream.dart';
import './practice/stream2.dart';

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
              ListTile(
                title: Text('Stream simple'),
                leading: Icon(
                  Icons.stream,
                  size: 24,
                  color: Colors.red[800],
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StateApp())),
              ),
              ListTile(
                title: Text('Stream http'),
                leading: Icon(
                  Icons.not_accessible_rounded,
                  size: 24,
                  color: Colors.orangeAccent[800],
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StreamHttp())),
              ),
              ListTile(
                title: Text('Counter Bloc pattern simple'),
                leading: Icon(
                  Icons.not_accessible_rounded,
                  size: 24,
                  color: Colors.yellow[900],
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CounterAppBloc())),
              ),
              ListTile(
                title: Text('Counter Bloc pattern this!!'),
                leading: Icon(
                  Icons.turned_in,
                  size: 24,
                  color: Colors.brown[900],
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CounterAppBloc2())),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                title: Text('Counter Provider (in provider)'),
                leading: Icon(
                  Icons.sim_card_outlined,
                  size: 24,
                  color: Colors.deepOrange[900],
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CounterProvider())),
              ),
              ListTile(
                title: Text('Salary Provider 2'),
                leading: Icon(
                  Icons.tapas_rounded,
                  size: 24,
                  color: Colors.brown[900],
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SalProvider())),
              ),
              ListTile(
                title: Text('Player Provider CLASSES used'),
                leading: Icon(
                  Icons.format_align_justify,
                  size: 24,
                  color: Colors.green[900],
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PlayerProvider())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
