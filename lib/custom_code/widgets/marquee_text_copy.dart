// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:marquee/marquee.dart';

class MarqueeTextCopy extends StatefulWidget {
  MarqueeTextCopy({
    Key? key,
    this.width,
    this.height,
    required this.text,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String text;

  @override
  _MarqueeTextCopyState createState() => _MarqueeTextCopyState();
}

class _MarqueeTextCopyState extends State<MarqueeTextCopy> {
  bool isMarqueeRunning = true;

  void stopMarquee() {
    setState(() {
      isMarqueeRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height,
        child: Marquee(
          text: widget.text,
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
          scrollAxis: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 190.0,
          velocity: 70.0,
          pauseAfterRound: Duration(seconds: 10),
          startPadding: 10.0,
          accelerationDuration: Duration(seconds: 1),
          accelerationCurve: Curves.linear,
          decelerationDuration: Duration(milliseconds: 10),
          decelerationCurve: Curves.easeOut,
        ));
  }
}
