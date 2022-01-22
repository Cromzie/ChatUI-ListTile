import 'package:flutter/material.dart';
import './constants.dart';

class DateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    return Text(
      '${12+now.hour}:${now.minute}',
      style: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: kwhite
      ),
    );
  }
}
