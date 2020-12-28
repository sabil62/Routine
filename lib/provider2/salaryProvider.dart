import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeTable/provider/counterState.dart';
import './salaryState.dart';

class SalProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SalaryState>(create: (context) => SalaryState()),
        ChangeNotifierProvider<CounterState>(
            create: (context) => CounterState())
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Salary Provider'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Builder(builder: (BuildContext context) {
                return Text(
                  context.watch<SalaryState>().name,
                  style: TextStyle(fontSize: 36),
                );
              }),
              SizedBox(
                height: 25,
              ),
              Builder(builder: (BuildContext context) {
                return Text('The salary is ' +
                    context.watch<SalaryState>().salary.toString());
              }),
              SizedBox(
                height: 25,
              ),
              Builder(builder: (BuildContext context) {
                return Text(context.watch<CounterState>().count.toString() +
                    ' This is from another class');
              }),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Builder(builder: (BuildContext context) {
                    return RaisedButton(
                        child: Icon(
                          Icons.add,
                          size: 36,
                        ),
                        onPressed: () {
                          context.read<SalaryState>().increment(1000);
                        });
                  }),
                  Builder(builder: (BuildContext context) {
                    return RaisedButton(
                        child: Icon(
                          Icons.remove,
                          size: 36,
                        ),
                        onPressed: () {
                          context.read<SalaryState>().decrement(500);
                        });
                  }),
                  Builder(builder: (BuildContext context) {
                    return RaisedButton(
                        color: Colors.green,
                        disabledColor: Colors.green[100],
                        child: Text('*2'),
                        onPressed: () {
                          context.read<SalaryState>().multiply();
                        });
                  })
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
