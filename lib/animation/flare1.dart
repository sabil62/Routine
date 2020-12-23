import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import './alltimeflare1.dart';

class FlareApp extends StatefulWidget {
  @override
  _FlareAppState createState() => _FlareAppState();
}

class _FlareAppState extends State<FlareApp> {
  SmileyControl controlSmile = SmileyControl();
  double rating = 5;
  String animationss = '5+';
  changing(value) {
    if (rating == value) {
      return;
    }
    setState(() {
      if (rating < value) {
        animationss = '${value.round()}+';
      } else {
        animationss = '${value.round()}-';
      }
      // if (rating < value) {
      //   String milaune = '${rating.toInt() + 1.round()}';
      //   animationss = milaune + '+';
      // } else {
      //   String milaune = '${rating.toInt() - 1.round()}';
      //   animationss = milaune + '-';
      // }
      // print(animationss);
      rating = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flare'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: 350,
              child: FlareActor(
                'assets/HappinessRating.flr',
                animation: animationss,
                controller: controlSmile,
              ),
            ),
            Text(
              rating.toString(),
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Slider(
                value: rating,
                divisions: 4,
                min: 1,
                max: 5,
                label: 'Happy Slider',
                onChanged: (value) {
                  changing(value);
                })
          ],
        ),
      ),
    );
  }
}
