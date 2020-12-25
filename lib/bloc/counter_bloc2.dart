import 'dart:async';

enum CounterAction { Increment, Decrement }

class CounterBloc2 {
  int counter;
  final statestreamController = StreamController<int>();

  StreamSink<int> get counterSink2 => statestreamController.sink;
  Stream<int> get counterStream2 => statestreamController.stream;

  final eventstreamController = StreamController<CounterAction>();

  StreamSink<CounterAction> get eventSink2 => eventstreamController.sink;
  Stream<CounterAction> get eventStream2 => eventstreamController.stream;

  CounterBloc2() {
    counter = 0;

    eventStream2.listen((event) {
      if (event == CounterAction.Increment)
        counter++;
      else if (event == CounterAction.Decrement) counter--;

      counterSink2.add(counter);
    });
  }
}
