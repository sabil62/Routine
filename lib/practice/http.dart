import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class HttpApp extends StatefulWidget {
  @override
  _HttpAppState createState() => _HttpAppState();
}

class _HttpAppState extends State<HttpApp> {
  List data;
  Future getdata() async {
    var url = 'https://jsonplaceholder.typicode.com/todos/';
    //var url2 = 'https://api.github.com/users/sabil62';
    http.Response response = await http.get(url);
//Uri.encodeFull(url), headers: {"Accept": "application/JSON"}
    //print(response.body);

    setState(() {
      data = json.decode(response.body);
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
        title: Text('HTTP requests'),
      ),
      body: data == null
          ? Container(
              child: Text('null data'),
            )
          : ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return dataContainer(context, data[index]["id"],
                    data[index]["title"], data[index]["completed"]);
              }),
    );
  }
}

Container dataContainer(context, one, two, three) {
  return Container(
    height: 200,
    width: MediaQuery.of(context).size.width * 10,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          one.toString(),
          style: TextStyle(color: Colors.white54, fontSize: 17),
        ),
        Text(
          two.toString(),
          style: TextStyle(color: Colors.white54, fontSize: 17),
        ),
        Text(
          three.toString(),
          style: TextStyle(color: Colors.white54, fontSize: 17),
        ),
      ],
    ),
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.red[50], Colors.amber])),
  );
}
