import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SpecialDays extends StatefulWidget {
  @override
  _SpecialDaysState createState() => _SpecialDaysState();
}

class _SpecialDaysState extends State<SpecialDays> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
        height: height * 0.87,
        alignment: Alignment.topCenter,
        child: ListView(
            children: <Widget>[
              Lottie.asset(
                  'assets/special.json',
                  height: height / 4
              ),
            ]
        )
    );
  }
}

