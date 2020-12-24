//trying http with stream
//Perfectly worked
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class StreamHttp extends StatefulWidget {
  @override
  _StreamHttpState createState() => _StreamHttpState();
}

class _StreamHttpState extends State<StreamHttp> {
  List userdata;
  Map data;

  Future getdata() async {
    var url = 'https://reqres.in/api/users?page=1';
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

  Stream httpstream() async* {
    for (var i = 0; i < userdata.length; i++) {
      await Future.delayed(Duration(milliseconds: 1000));
      yield userdata[i]["email"];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream http'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: StreamBuilder(
                initialData: 'wait',
                stream: httpstream(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasError) {
                    return Icon(
                      Icons.error_outline,
                      color: Colors.red,
                      size: 60,
                    );
                  }
                  return Text(
                    snapshot.data,
                    style: texter(54),
                  );
                }),
          )
        ],
      ),
    );
  }

  TextStyle texter(double size) {
    return TextStyle(
        fontSize: size, fontWeight: FontWeight.bold, color: Colors.black87);
  }
}
