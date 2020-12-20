import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HttpThree extends StatefulWidget {
  @override
  _HttpThreeState createState() => _HttpThreeState();
}

class _HttpThreeState extends State<HttpThree> {
  Map data;
  List userdata;
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

  @override
  Widget build(BuildContext context) {
    return userdata == null
        ? Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: userdata.length,
            itemBuilder: (context, index) => displayContainer(
                userdata[index]["avatar"],
                userdata[index]["first_name"],
                userdata[index]["email"]));
  }
}

Widget displayContainer(frontimage, firstName, email) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 80,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green[100], Colors.green])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(frontimage),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                firstName,
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.red,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                email,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
