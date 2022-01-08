import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF252526),
        accentColor: Color(0xFF4EC9B0),
      ),
      home: Scaffold(
        appBar: AppBar(
            title: Column(
          children: [
            Container(
              height: double.infinity * 0.9,
              child: SafeArea(
                child: Row(
                  children: [
                    DateWidget(),
                    SizedBox(width: 5.0),
                    Icon(Icons.circle_outlined, size: 5.0),
                    SizedBox(width: 5.0),
                    Icon(FontAwesomeIcons.magic, size: 5.0),
                    SizedBox(width: double.infinity / 2.5),
                    Icon(FontAwesomeIcons.clock, size: 5.0),
                    SizedBox(width: 5.0),
                    Icon(FontAwesomeIcons.bluetooth, size: 5.0),
                    SizedBox(width: 5.0),
                    Icon(FontAwesomeIcons.networkWired, size: 5.0),
                    SizedBox(width: 5.0),
                    Icon(FontAwesomeIcons.bars, size: 5.0),
                    SizedBox(width: 5.0),
                    Icon(FontAwesomeIcons.batteryThreeQuarters, size: 5.0),
                    SizedBox(width: 5.0),
                  ],
                ),
              ),
            ),
            Container(
              height: double.infinity / 6,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'WhatsApp',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(width: double.infinity / 2),
                      Icon(Icons.search, size: 12.0),
                      SizedBox(width: 10.0),
                      Icon(
                        FontAwesomeIcons.ellipsisV,
                        size: 12.0,
                        semanticLabel: 'ellipsis',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FontAwesomeIcons.camera,
                        size: 14.0,
                      ),
                      Row(
                        children: [
                          TextsWidget(texts: 'CHATS'),
                          Container(
                            child: Text(
                              '48',
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: Color(0xFF4EC9B0),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    ),
  );
}

class DateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    return Text(
      '${now.hour}:${now.minute}',
    );
  }
}

class TextsWidget extends StatelessWidget {
  TextsWidget({required this.texts});
  final String texts;

  @override
  Widget build(BuildContext context) {
    return Text(
      texts,
      style: TextStyle(
        fontSize: 14.0,
        color: Color(0xFF4EC9B0),
      ),
    );
  }
}
