import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ChartandHttp extends StatefulWidget {
  @override
  _ChartandHttpState createState() => _ChartandHttpState();
}

class _ChartandHttpState extends State<ChartandHttp> {
  List<charts.Series<Dust, String>> chartinfo() {
    final data = [
      Dust("Ktm", 20),
      Dust("Birat", 50),
      Dust("Pkr", 10),
      Dust("bkt", 20)
    ];

    return [
      charts.Series(
        data: data,
        id: 'Data of Dust by location',
        measureFn: (Dust duster, _) => duster.dust,
        domainFn: (Dust duster, _) => duster.location,
        colorFn: (Dust dust, _) =>
            charts.ColorUtil.fromDartColor(dust.colors(dust.dust)),
      )
    ];
  }

  Map data;
  List userdata;
  //http
  Future getdata() async {
    var url = "https://reqres.in/api/users?page=1";
    http.Response response = await http.get(url);

    data = json.decode(response.body);
    setState(() {
      userdata = data["data"];
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chart'),
      ),
      body: Column(
        children: [
          Container(
            height: 350,
            child: charts.BarChart(
              chartinfo(),
              animate: true,
              animationDuration: Duration(milliseconds: 1600),
            ),
          ),
          Container(
            height: 30,
            child: Text(
              userdata[1]["email"] + ' ' + userdata[2]["email"],
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

class Dust {
  String location;
  int dust;

  colors(dust) {
    if (dust < 20) {
      return Colors.red;
    } else if (dust == 20) {
      return Colors.blue;
    } else {
      return Colors.green;
    }
  }

  Dust(this.location, this.dust);
}
