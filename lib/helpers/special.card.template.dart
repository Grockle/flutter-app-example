import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class SpecialCard extends StatefulWidget {
  final String schedule;
  final double width;
  final double height;
  final int icon;
  const SpecialCard(this.schedule, this.icon,this.height, this.width);

  @override
  _SpecialCardState createState() => _SpecialCardState();
}

class _SpecialCardState extends State<SpecialCard> {
  List<String> icons = ['assets/special_birthday.json', 'assets/special_ramadan.json', 'assets/special_valentine.json'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height / 5,
      margin: EdgeInsets.only(left: widget.width / 60, right: widget.width / 60),
      decoration: BoxDecoration(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: HexColor('#2eb67d'),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)
                    )
                ),
                child: Align(
                  child: Row(
                    children: <Widget>[
                      Expanded(flex: 8, child: Container(margin: EdgeInsets.only(left: 10),child: Text(widget.schedule, style: GoogleFonts.openSans(color: Colors.white, fontSize: widget.width / 23)))),
                      Expanded(flex: 1, child: Icon(Icons.delete, color: Colors.white)),
                      Expanded(flex: 1, child: Icon(Icons.edit, color: Colors.white)),
                    ],
                  ),
                ),
              )
          ),
          Flexible(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    color: HexColor('#ecb22e'),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    )
                ),
                child: Align(
                  child: Row(
                    children: <Widget>[
                      Expanded(flex: 1, child: Container(
                        child: Lottie.asset(
                            icons[widget.icon],
                            height: widget.height / 6
                        ),
                      ),
                      ),
                      Expanded(flex: 3, child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: widget.height / 200),
                            Text("Schedule: Montly", style: GoogleFonts.openSans(color: HexColor('#4a154b'), fontSize: widget.width / 30, fontWeight: FontWeight.bold)),
                            Divider(color: Colors.black,),
                            Text("Day: 01 / Time: 09:00", style: GoogleFonts.openSans(color: HexColor('#4a154b'), fontSize: widget.width / 30, fontWeight: FontWeight.bold)),
                            Divider(color: Colors.black,),
                            Text("Description:", style: GoogleFonts.openSans(color: HexColor('#4a154b'), fontSize: widget.width / 30, fontWeight: FontWeight.bold)),
                            Text("Pay the rent", style: GoogleFonts.openSans(color: HexColor('#4a154b'), fontSize: widget.width / 30)),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}