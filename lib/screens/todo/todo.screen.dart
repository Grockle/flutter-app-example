import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:reminder/helpers/event.card.template.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
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
                    'assets/todo.json',
                    height: height / 4
                ),
              ),
              Container(
                height: height * 0.62,
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: height / 50),
                    EventCardTemplate('Test',height,width)
                  ],
                ),
              )

            ]
        )
    );
  }
}

