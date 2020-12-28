import 'package:flutter/cupertino.dart';

class PlayerCount extends ChangeNotifier {
  var players = [
    Player('Aman', 'Shrestha', 100, 25000),
    Player("Riyad", "Maharz", 20, 25000),
    Player('Ilkay', 'Gundogan', 10, 25000),
    Player('Bartholema', 'Kuma', 32, 32000),
    Player('Roronoa', 'Zoro', 32, 32000),
    Player('Sanji', 'Vinsmoke', 20, 25000),
    Player('Monkey', 'Luffy', 32, 32000),
    Player("David", "Silva", 10, 25000),
    Player("Lionel", "Messi", 20, 25000),
    Player("Christiano", "Ronaldo", 32, 32000),
    Player("David", "Villa", 20, 25000),
    Player("David", "Silva", 30, 25000),
    Player("Manuel", "singh", 40, 25000),
    Player("Kuwasiki", "Honda", 30, 25000),
    Player("Fernandino", "Rio", 40, 25000),
    Player('Bartholema', 'Kuma', 32, 32000),
    Player('Roronoa', 'Zoro', 32, 32000),
    Player('Sanji', 'Vinsmoke', 20, 25000),
  ];
  void increment(index) {
    players[index].salary += 1000;
    notifyListeners();
  }

  void decrement(index) {
    players[index].salary -= 1000;
    notifyListeners();
  }
}

class Player {
  String firstName;
  String lastName;
  int rating;
  int salary;
  Player(this.firstName, this.lastName, this.rating, this.salary);
}
