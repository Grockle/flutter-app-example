import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:reminder/screens/activity/activity.screen.dart';
import 'package:reminder/screens/add/add.screen.dart';
import 'package:reminder/screens/notes/notes.sceen.dart';
import 'package:reminder/screens/repeats/repeats.screen.dart';
import 'package:reminder/screens/special/special.days.screen.dart';
import 'package:reminder/screens/todo/todo.screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  var pages = [Repeats(), SpecialDays(), Activity(), Notes(), Todo()];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              pages[_currentIndex]
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: HexColor('#e01e5a'),
        child: Icon(Icons.add),
      ),
      bottomNavigationBar:  ConvexAppBar(
        items: const [
          TabItem(icon: Icons.repeat, title: 'Routine'),
          TabItem(icon: Icons.cake_outlined, title: 'Specials'),
          TabItem(icon: Icons.directions_bike_outlined, title: 'Activity'),
          TabItem(icon: Icons.notes, title: 'Notes'),
          TabItem(icon: Icons.check, title: 'Todo'),
        ],
        backgroundColor: HexColor('#e01e5a'),
        initialActiveIndex: _currentIndex,//optional, default as 0
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
      )
    );
  }
}
