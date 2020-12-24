import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:async';

class StateApp extends StatefulWidget {
  @override
  _StateAppState createState() => _StateAppState();
}

class _StateAppState extends State<StateApp> {
  var player = ['lion', 'tiger', 'elephant', 'bear'];

  Stream<String> streamer() async* {
    for (var i = 0; i < player.length; i++) {
      await Future.delayed(Duration(milliseconds: 1200));
      yield player[i];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
              initialData: 'wait',
              stream: streamer(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return Text(
                  snapshot.data,
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                );
              })
        ],
      ),
    );
  }
}
