//ignore this page for now

import 'package:flutter/material.dart';
import './counterState.dart';
import 'package:provider/provider.dart';

class CounterOperation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Builder(
        builder: (BuildContext contextss) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'lion',
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: () {
                      contextss.read<CounterState>().increment();
                    },
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      contextss.read<CounterState>().decrement();
                    },
                    child: Icon(
                      Icons.remove,
                      size: 30,
                    ),
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
