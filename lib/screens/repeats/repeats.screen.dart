import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Repeats extends StatefulWidget {
  @override
  _RepeatsState createState() => _RepeatsState();
}

class _RepeatsState extends State<Repeats> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.87,
      alignment: Alignment.topCenter,
      child: ListView(
        children: <Widget>[
          Lottie.asset(
              'assets/repeats.json',
              height: height / 4
          ),
        ]
      )
    );
  }
}

