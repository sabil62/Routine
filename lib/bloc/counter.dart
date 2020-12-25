import 'package:flutter/material.dart';
import 'package:timeTable/bloc/counter_bloc.dart';

class CounterAppBloc extends StatefulWidget {
  @override
  _CounterAppBlocState createState() => _CounterAppBlocState();
}

class _CounterAppBlocState extends State<CounterAppBloc> {
  //this is from counter_block class
  final counterBloc = CounterBloc();
  int counter = 0;
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
              stream: counterBloc.counterStream,
              builder: (context, snapshot) => Text(
                '$counter',
                style: TextStyle(
                    fontSize: 48,
                    color: Colors.black87,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          counterBloc.counterSink.add(counter);
        },
        child: Icon(
          Icons.add,
          size: 36,
          color: Colors.white,
        ),
      ),
    );
  }
}
