// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
        height: height * 0.87,
        alignment: Alignment.topCenter,
        child: ListView(
            children: <Widget>[
              Lottie.asset(
                  'assets/bike.json',
                  height: height / 4
              ),
            ]
        )
    );
  }
}

