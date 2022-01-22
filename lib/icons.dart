import 'package:flutter/material.dart';

class IconsWidget extends StatelessWidget {
  IconsWidget(
      {required this.iconName, this.sizes: 14.0, this.colorr: Colors.white60});

  final Color colorr;
  final IconData iconName;
  final double sizes;
  @override
  Widget build(BuildContext context) {
    return (Icon(iconName, size: sizes, color: colorr));
  }
}
