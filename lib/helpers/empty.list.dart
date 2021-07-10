import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class EmptyList extends StatefulWidget {
  @override
  State<EmptyList> createState() => _EmptyListState();
}

class _EmptyListState extends State<EmptyList> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 2,
      width: width * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
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
      ),
      child: ListView(
        children: <Widget>[
          Container(child: Lottie.asset(
              'assets/add1.json',
              height: height / 4
          )
          ),
          SizedBox(height: 20),
          Text("You can add a reminder from the button at the center",
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      color: HexColor('#4A154B'),
                      fontWeight: FontWeight.bold,
                      fontSize: 20))
          )
        ],
      ),
    );
  }
}


