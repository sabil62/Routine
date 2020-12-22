import 'package:flutter/material.dart';

class DataTables extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable'),
      ),
      body: DataTable(
        columns: [
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('pes')),
          DataColumn(label: Text('points')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('lion'), showEditIcon: true),
            DataCell(Text('120')),
            DataCell(Text('93'))
          ]),
          DataRow(cells: [
            DataCell(Text('Ronaldo')),
            DataCell(Text('130')),
            DataCell(Text('91'))
          ]),
          DataRow(selected: true, cells: [
            DataCell(Text('Kevin De Bryne')),
            DataCell(Text('140')),
            DataCell(Text('97'))
          ]),
          DataRow(cells: [
            DataCell(Text('Aguero')),
            DataCell(Text('130')),
            DataCell(Text('95'))
          ]),
          DataRow(cells: [
            DataCell(Icon(
              Icons.play_arrow,
              size: 126,
              color: Colors.amber,
            )),
            DataCell(Text('')),
            DataCell(Text('')),
          ])
        ],
      ),
    );
  }
}
