import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import './counterState.dart';

class CounterProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterState>(
            create: (context) => CounterState())
      ],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Builder(
            builder: (BuildContext context) {
              return Text(
                context.watch<CounterState>().count.toString(),
                style: TextStyle(fontSize: 40),
              );
            },
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Builder(builder: (BuildContext context) {
                return RaisedButton(
                  onPressed: () {
                    context.read<CounterState>().increment();
                  },
                  child: Icon(
                    Icons.add,
                    size: 30,
                  ),
                );
              }),
              Builder(builder: (BuildContext context) {
                return RaisedButton(
                    child: Icon(
                      Icons.remove,
                      size: 40,
                    ),
                    onPressed: () {
                      context.read<CounterState>().decrement();
                    });
              })
            ],
          )
        ],
      ),
    );
  }
}
