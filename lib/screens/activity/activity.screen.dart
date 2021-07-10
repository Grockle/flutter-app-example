// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:reminder/helpers/event.card.template.dart';

class Activity extends StatefulWidget {
  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
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
                    'assets/bike.json',
                    height: height / 4
                ),
              ),
              Container(
                height: height * 0.62,
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: height / 50),
                    EventCardTemplate('Go Sport',height,width)
                  ],
                ),
              )

            ]
        )
    );
  }
}