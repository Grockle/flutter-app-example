// ignore_for_file: unnecessary_new

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:reminder/screens/home/home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Home()));
  }

  void initState() {
    startTime();
    super.initState();
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: new Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Container(
                alignment: Alignment.center,
                child: Lottie.asset(
                  'assets/animation1.json'
                ),
              ),
            )));
  }
}
