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
            SafeArea(
              child: Row(
                children: [],
              ),
            ),
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
