import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:reminder/helpers/empty.list.dart';

class Repeats extends StatefulWidget {
  @override
  _RepeatsState createState() => _RepeatsState();
}

class _RepeatsState extends State<Repeats> {
  var height = 0.0;
  var width = 0.0;

  Widget ConteinerTemplate() {
    return Container(
        height: height / 5,
        margin: EdgeInsets.only(left: width / 60, right: width / 60),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        )
    );
  }

  Widget getListOfRepeats() {
    return ListView(
        children: <Widget>[
        ConteinerTemplate()
      ]
    );
  }


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
                ConteinerTemplate(),
                SizedBox(height: height / 40),
                ConteinerTemplate(),
                SizedBox(height: height / 40),
                ConteinerTemplate(),
                SizedBox(height: height / 40),
                ConteinerTemplate(),
                SizedBox(height: height / 40),
                ConteinerTemplate()
              ],
            ),
          )

        ]
      )
    );
  }
}

