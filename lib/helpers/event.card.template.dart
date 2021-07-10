import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class EventCardTemplate extends StatefulWidget {
  final String schedule;
  final double width;
  final double height;
  const EventCardTemplate(this.schedule, this.height, this.width);

  @override
  _EventCardTemplateState createState() => _EventCardTemplateState();
}

class _EventCardTemplateState extends State<EventCardTemplate> {
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
        children: <Widget>[
          Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: HexColor('#4A154B'),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)
                    )
                ),
                child: Align(
                  child: Text(widget.schedule, style: GoogleFonts.openSans(color: Colors.white, fontSize: widget.width / 21),),
                ),
              )
          ),
          Flexible(
              flex: 3,
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff8b250),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                      )
                  )
              )
          )
        ],
      ),
    );
  }
}
