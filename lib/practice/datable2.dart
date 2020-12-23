import 'package:flutter/material.dart';

class DataTableTwo extends StatefulWidget {
  @override
  _DataTableTwoState createState() => _DataTableTwoState();
}

class _DataTableTwoState extends State<DataTableTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable'),
      ),
      body: ListView(
        children: [
          DataTable(
              columns: [
                DataColumn(
                    label: Text('Name'),
                    onSort: (a, b) {
                      setState(() {
                        friend.sort((a, b) => a.name.compareTo(b.name));
                      });
                    }),
                DataColumn(
                    label: Text('LastName'),
                    onSort: (a, b) {
                      setState(() {
                        friend.sort((a, b) => a.lastName.compareTo(b.lastName));
                      });
                    }),
                DataColumn(label: Text('Rating'))
              ],
              rows: friend
                  .map((e) => DataRow(cells: [
                        DataCell(Text(e.name)),
                        DataCell(Text(e.lastName)),
                        DataCell(Text(e.rating.toString()))
                      ]))
                  .toList()),
        ],
      ),
    );
  }
}

class People {
  String name;
  String lastName;
  int rating;
  People(this.name, this.lastName, this.rating);
}

var friend = [
  People('Aman', 'Shrestha', 100),
  People("Riyad", "Maharz", 20),
  People('Ilkay', 'Gundogan', 10),
  People('Bartholema', 'Kuma', 32),
  People('Roronoa', 'Zoro', 32),
  People('Sanji', 'Vinsmoke', 20),
  People('Monkey', 'Luffy', 32),
  People("David", "Silva", 10),
  People("Lionel", "Messi", 20),
  People("Christiano", "Ronaldo", 32),
  People("David", "Villa", 20),
  People("David", "Silva", 30),
  People("Manuel", "singh", 40),
  People("Kuwasiki", "Honda", 30),
  People("Fernandino", "Rio", 40),
  People('Bartholema', 'Kuma', 32),
  People('Roronoa', 'Zoro', 32),
  People('Sanji', 'Vinsmoke', 20),
  People('Monkey', 'Luffy', 32),
  People("David", "Silva", 10),
  People("Lionel", "Messi", 20),
  People("Christiano", "Ronaldo", 32),
];
