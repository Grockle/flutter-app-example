import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
        height: height * 0.87,
        alignment: Alignment.topCenter,
        child: ListView(
            children: <Widget>[
              Lottie.asset(
                  'assets/notes.json',
                  height: height / 4
              ),
            ]
        )
    );
  }
}
