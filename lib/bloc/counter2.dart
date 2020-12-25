import 'package:flutter/material.dart';
import 'package:timeTable/bloc/counter_bloc2.dart';

class CounterAppBloc2 extends StatefulWidget {
  @override
  _CounterAppBloc2State createState() => _CounterAppBloc2State();
}

class _CounterAppBloc2State extends State<CounterAppBloc2> {
  //this is from counter_block class
  final counterBloc = CounterBloc2();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Bloc pattern'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('The increments are:'),
            SizedBox(
              height: 26,
            ),
            StreamBuilder(
              stream: counterBloc.counterStream2,
              initialData: 0,
              builder: (context, snapshot) => Text(
                '${snapshot.data}',
                style: TextStyle(
                    fontSize: 48,
                    color: Colors.black87,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            heroTag: '12',
            onPressed: () {
              counterBloc.eventSink2.add(CounterAction.Increment);
            },
            child: Icon(
              Icons.add,
              size: 36,
              color: Colors.white,
            ),
          ),
          FloatingActionButton(
              heroTag: '13',
              child: Icon(
                Icons.remove,
                size: 36,
                color: Colors.white,
              ),
              onPressed: () {
                counterBloc.eventSink2.add(CounterAction.Decrement);
              })
        ],
      ),
    );
  }
}
