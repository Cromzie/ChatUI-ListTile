import 'package:flutter/material.dart';

class TextsWidget extends StatelessWidget {
  TextsWidget({required this.texts, this.colors, this.fontSizes: 14.0, this.fontWeights: FontWeight.bold});

  final String texts;
  final Color ? colors;
  final double ? fontSizes;
  final FontWeight ? fontWeights;

  @override
  Widget build(BuildContext context) {
    return Text(
      texts,
      style: TextStyle(
        fontSize: fontSizes,
        color: colors,
        fontWeight: fontWeights,
      ),
    );
  }
}