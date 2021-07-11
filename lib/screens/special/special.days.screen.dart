import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:reminder/helpers/event.card.template.dart';
import 'package:reminder/helpers/special.card.template.dart';

class SpecialDays extends StatefulWidget {
  @override
  _SpecialDaysState createState() => _SpecialDaysState();
}

class _SpecialDaysState extends State<SpecialDays> {
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
                    'assets/special.json',
                    height: height / 4
                ),
              ),
              Container(
                height: height * 0.62,
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: height / 50),
                    SpecialCard('Birthday',0,height,width),
                    SizedBox(height: height / 50),
                    SpecialCard('Ramadan',1,height,width),
                    SizedBox(height: height / 50),
                    SpecialCard('Valentine',2,height,width)

                  ],
                ),
              )

            ]
        )
    );
  }
}

