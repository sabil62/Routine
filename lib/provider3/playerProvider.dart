import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'playerState.dart';

class PlayerProvider extends StatelessWidget {
  PlayerCount playerCount = PlayerCount();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PlayerCount>(create: (context) => PlayerCount())
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Player Class Provider '),
        ),
        body: ListView.builder(
            itemCount: playerCount
                .players.length, //context.watch<PlayerCount>().players.length,
            itemBuilder: (BuildContext context, index) {
              return Container(
                height: 200,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Builder(
                      builder: (BuildContext context) {
                        return Text(
                          context.watch<PlayerCount>().players[index].firstName,
                          style: font(15.0),
                        );
                      },
                    ),
                    Builder(builder: (BuildContext context) {
                      return Text(
                        context.watch<PlayerCount>().players[index].lastName,
                        style: font(15.0),
                      );
                    }),
                    Builder(builder: (BuildContext context) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            context
                                .watch<PlayerCount>()
                                .players[index]
                                .rating
                                .toString(),
                            style: font(14.0),
                          ),
                          Text(
                            context
                                .watch<PlayerCount>()
                                .players[index]
                                .salary
                                .toString(),
                            style: font(24.0),
                          )
                        ],
                      );
                    }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Builder(builder: (BuildContext context) {
                          return RaisedButton(
                              child: Icon(
                                Icons.add,
                                size: 36,
                              ),
                              onPressed: () {
                                context.read<PlayerCount>().increment(index);
                              });
                        }),
                        Builder(builder: (BuildContext context) {
                          return RaisedButton(
                              child: Icon(Icons.remove),
                              onPressed: () {
                                context.read<PlayerCount>().decrement(index);
                              });
                        }),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }

  TextStyle font(size) {
    return TextStyle(fontSize: size, fontWeight: FontWeight.bold);
  }
}
