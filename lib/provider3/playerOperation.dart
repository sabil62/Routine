import 'package:flutter/material.dart';
import './playerState.dart';
import 'package:provider/provider.dart';

class PlayerOperation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player Class Provider '),
      ),
      body: ListView.builder(
          itemCount: context.watch<PlayerCount>().players.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: [
                Text(
                  context.watch<PlayerCount>().players[index].firstName,
                  style: font(28),
                ),
                Text(
                  context.watch<PlayerCount>().players[index].lastName,
                  style: font(28),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.add,
                          size: 36,
                        ),
                        onPressed: () {
                          context.read<PlayerCount>().increment(index);
                        }),
                    IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          context.read<PlayerCount>().decrement(index);
                        })
                  ],
                )
              ],
            );
          }),
    );
  }

  TextStyle font(size) {
    return TextStyle(fontSize: size, fontWeight: FontWeight.bold);
  }
}
