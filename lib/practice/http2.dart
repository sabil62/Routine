import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HttpTwo extends StatefulWidget {
  @override
  _HttpTwoState createState() => _HttpTwoState();
}

class _HttpTwoState extends State<HttpTwo> {
  Map datas;
  List data;
  Future getdata() async {
    var url = 'https://reqres.in/api/users?page=1';
    http.Response response = await http.get(url);
    print(response.body);

    setState(() {
      datas = json.decode(response.body);
      data = datas["data"];
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
        title: Text('Http from bhitra ko bhitra'),
      ),
      body: data == null
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => Container(
                    height: 200,
                    color: Colors.orange.withOpacity(0.6),
                    child: Column(
                      children: [
                        Text(
                          data[index]["first_name"],
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white38,
                              fontWeight: FontWeight.w700),
                        ),
                        // Text(
                        //   data[index]["data"]["id"],
                        //   style: TextStyle(
                        //       fontSize: 16,
                        //       color: Colors.white38,
                        //       fontWeight: FontWeight.w700),
                        // ),
                        Text(
                          data[index]["last_name"],
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white38,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  )),
    );
  }
}
