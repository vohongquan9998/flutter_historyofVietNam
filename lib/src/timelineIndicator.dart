import 'package:flutter/material.dart';
import 'package:flutter_historyofvietnam/models/data.dart';

class TimeLineIndicator extends StatelessWidget {
  final String item;
  TimeLineIndicator({this.item});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
              colors: [Colors.red[100], Colors.green[50]],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft)),
      child: Center(
          child: Text(
        item,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 13,
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
