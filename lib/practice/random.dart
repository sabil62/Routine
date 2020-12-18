import 'package:flutter/material.dart';
import 'dart:math';

class Randoms extends StatefulWidget {
  @override
  _RandomsState createState() => _RandomsState();
}

class _RandomsState extends State<Randoms> {
  Random random = Random();
  int randomNum(int nums) {
    return random.nextInt(nums);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                    offset: Offset(3, 3),
                    color: Colors.white.withOpacity(.3),
                    blurRadius: 3,
                    spreadRadius: 3)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                random.nextInt(100).toString(),
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white60,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                randomNum(50).toString(),
                style: TextStyle(color: Colors.white60),
              )
            ],
          ),
        ),
      ],
    );
  }
}
