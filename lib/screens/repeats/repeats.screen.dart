import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:reminder/helpers/event.card.template.dart';
import 'package:reminder/helpers/routine.card.template.dart';

class Repeats extends StatefulWidget {
  @override
  _RepeatsState createState() => _RepeatsState();
}

class _RepeatsState extends State<Repeats> {
  var height = 0.0;
  var width = 0.0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.87,
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: height * 0.25,
            child: Lottie.asset(
                'assets/repeats.json',
                height: height / 4
            ),
          ),
          Container(
            height: height * 0.62,
            child: ListView(
              children: <Widget>[
                SizedBox(height: height / 50),
                RoutineCard('Read',3,height,width),
                SizedBox(height: height / 50),
                RoutineCard('Coffee',1,height,width),
                SizedBox(height: height / 50),
                RoutineCard('Yoga',2,height,width),
                SizedBox(height: height / 50),
                RoutineCard('Custom', 0,height,width)

              ],
            ),
          )

        ]
      )
    );
  }
}

