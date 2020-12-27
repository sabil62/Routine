import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeTable/provider/counterState.dart';
import './salaryOperations.dart';
import './salaryState.dart';

class SalProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SalaryState()),
        ChangeNotifierProvider(create: (context) => CounterState())
      ],
      child: SalaryOperation(),
    );
  }
}
