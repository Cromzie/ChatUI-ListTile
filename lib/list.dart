import 'package:flutter/material.dart';
import 'package:whatsappui/text.dart';
import './constants.dart';
import './image.dart';



class ListviewWidget extends StatefulWidget {
  @override
  _ListviewWidgetState createState() => _ListviewWidgetState();
}

class _ListviewWidgetState extends State<ListviewWidget> {
  Map colgate = {
    'names': [
      'Final Decisions',
      'Prof A. A\u{02665}',
      '\u{02665}R.\u{02665}E.\u{02665}L.\u{02665}A.\u{02665}T.\u{02665}I.\u{02665}V.\u{02665}E.\u{02665}S.\u{02665}',
      'FAM\u{02665}\u{02665}\u{02665}\u{02665}',
      'GIRLS\u{1F3E9}',
      'ROAD SAFETY CDS',
      'CAC Assembly',
      'A\'s Mother',
      'Touch',
      'Pa\u{1F495}\u{1F495}',
      'A\u{02665}',
      'En\u{1F493}\u{1F495}',
      'Ennn\u{1F495}\u{1F495}',
      'V',
      'Final Decisions',
      'Prof A. A\u{02665}',
      '\u{02665}R.\u{02665}E.\u{02665}L.\u{02665}A.\u{02665}T.\u{02665}I.\u{02665}V.\u{02665}E.\u{02665}S.\u{02665}',
      'FAM\u{02665}\u{02665}\u{02665}\u{02665}',
      'GIRLS\u{1F3E9}',
      'ROAD SAFETY CDS',
      'CAC Assembly',
      'A\'s Mother',
      'Touch',
      'Pa\u{1F495}\u{1F495}',
      'A\u{02665}',
      'En\u{1F493}\u{1F495}',
      'Ennn\u{1F495}\u{1F495}',
      'V',
      
    ],
    'chats': [
      'Choreographer: Habbey',
      'Loremmmmmmmmmmmmmmm',
      'V: Na so me sef dey always laff',
      'V: Dfkm',
      'Lorem: Sticker',
      '+234 904 673 3333: Sticker',
      '+234 708 222 2222: IWA MIMO',
      'I don\'t think so',
      'Ok ma',
      'I believe you sir',
      'Yes ma',
      'Well done sir',
      'I\'d get back to you when I check',
      'Thanks a lot',
      'Choreographer: Habbey',
      'Loremmmmmmmmmmmmmmm',
      'V: Na so me sef dey always laff',
      'V: Dfkm',
      'Lorem: Sticker',
      '+234 904 673 3333: Sticker',
      '+234 708 222 2222: IWA MIMO',
      'I don\'t think so',
      'Ok ma',
      'I believe you sir',
      'Yes ma',
      'Well done sir',
      'I\'d get back to you when I check',
      'Thanks a lot',
    ],
    Image: [ImageWidget(img: 'assets/cac.jpg'),ImageWidget(img: 'assets/nysc.jpg'),ImageWidget(img: 'assets/platoon.jpg'),ImageWidget(img: 'assets/nysc.jpg'),ImageWidget(img: 'assets/platoon.jpg'),ImageWidget(img: 'assets/cac.jpg'),ImageWidget(img: 'assets/nysc.jpg'),ImageWidget(img: 'assets/platoon.jpg'),ImageWidget(img: 'assets/nysc.jpg'),ImageWidget(img: 'assets/platoon.jpg'),ImageWidget(img: 'assets/cac.jpg'),ImageWidget(img: 'assets/nysc.jpg'),ImageWidget(img: 'assets/platoon.jpg'),ImageWidget(img: 'assets/cac.jpg'),ImageWidget(img: 'assets/platoon.jpg'),ImageWidget(img: 'assets/cac.jpg'),ImageWidget(img: 'assets/nysc.jpg'),ImageWidget(img: 'assets/platoon.jpg'),ImageWidget(img: 'assets/cac.jpg'),ImageWidget(img: 'assets/platoon.jpg'),ImageWidget(img: 'assets/cac.jpg'),ImageWidget(img: 'assets/nysc.jpg'),ImageWidget(img: 'assets/platoon.jpg'),ImageWidget(img: 'assets/nysc.jpg'),ImageWidget(img: 'assets/platoon.jpg'),ImageWidget(img: 'assets/cac.jpg'),ImageWidget(img: 'assets/nysc.jpg'),ImageWidget(img: 'assets/platoon.jpg'),ImageWidget(img: 'assets/nysc.jpg'),ImageWidget(img: 'assets/platoon.jpg'),]
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: colgate['names'].length,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          leading: CircleAvatar(child: colgate[Image][index],
          ),
          title: TextsWidget(texts: colgate['names'][index], fontSizes: 16.0, colors: kgrey),
          subtitle: TextsWidget(texts: (colgate['chats'][index]), fontSizes: 14.0, colors: kgrey, fontWeights: FontWeight.normal,),
          tileColor: kdateArea,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6.0))),
        ),
      ),
    );
  }
}
