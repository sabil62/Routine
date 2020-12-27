import 'package:flutter/cupertino.dart';

class SalaryState extends ChangeNotifier {
  double salary = 8000;
  String name = 'aman';
  increment(amount) {
    salary = salary + amount;
    notifyListeners();
  }

  decrement(amount) {
    salary = salary - amount;
    notifyListeners();
  }

  multiply() {
    salary = salary * 2;
    notifyListeners();
  }
}
