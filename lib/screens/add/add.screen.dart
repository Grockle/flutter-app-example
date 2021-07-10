// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AddReminder extends StatefulWidget {
  @override
  _AddReminderState createState() => _AddReminderState();
}

class _AddReminderState extends State<AddReminder> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
        alignment: Alignment.center,
        child: Text('Add')
    );
  }
}
