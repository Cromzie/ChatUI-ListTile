import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  ImageWidget({required this.img});

  final String img;
  @override
  Widget build(BuildContext context) {
    return (Image(
      image: AssetImage(img),
    ));
  }
}
