import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reminder/screens/activity/activity.screen.dart';
import 'package:reminder/screens/add/add.screen.dart';
import 'package:reminder/screens/repeats/repeats.screen.dart';
import 'package:reminder/screens/special/special.days.screen.dart';
import 'package:reminder/screens/todo/todo.screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  var pages = [Repeats(), SpecialDays(), AddReminder(), Activity(), Todo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              pages[_currentIndex]
            ],
          ),
        ),
      ),
      bottomNavigationBar:  ConvexAppBar(
        items: const [
          TabItem(icon: Icons.repeat, title: 'Repeats'),
          TabItem(icon: Icons.cake_outlined, title: 'Special Days'),
          TabItem(icon: Icons.add, title: 'Add Event'),
          TabItem(icon: Icons.directions_bike_outlined, title: 'Activity'),
          TabItem(icon: Icons.check, title: 'Todo'),
        ],
        initialActiveIndex: _currentIndex,//optional, default as 0
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
      )
    );
  }
}
