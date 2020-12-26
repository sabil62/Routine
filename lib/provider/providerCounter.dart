import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import './counterState.dart';
import './counterproperations.dart';

class CounterProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterState>(
            create: (context) => CounterState())
      ],
      child: CounterOperation(),
    );
  }
}
