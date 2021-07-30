import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Lịch sử Việt Nam qua các thời kì',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 27,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
