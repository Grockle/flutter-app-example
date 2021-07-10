import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
        height: height * 0.87,
        alignment: Alignment.topCenter,
        child: ListView(
            children: <Widget>[
              Lottie.asset(
                  'assets/todo.json',
                  height: height / 4
              ),
            ]
        )
    );
  }
}

