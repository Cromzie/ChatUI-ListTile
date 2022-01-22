import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './datetimer.dart';
import './text.dart';
import './icons.dart';
import './list.dart';
import './constants.dart';

class BodyWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
              ListView(
                children: [
              Container(
                  padding: EdgeInsets.only(left: 25.0),
                  decoration: BoxDecoration(
                    color: kdateArea,
                  ),
                  child: Row(
                    children: [
                      DateWidget(),
                          ksmallWidth,
                          IconsWidget(iconName: Icons.circle_outlined),
                          ksmallWidth,
                          IconsWidget(iconName: Icons.mark_as_unread_outlined),
                        
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.49,
                      ),
                          IconsWidget(iconName: Icons.alarm),
                          ksmallWidth,
                          IconsWidget(iconName: Icons.bluetooth_connected_outlined),
                          ksmallWidth,
                          IconsWidget(iconName: Icons.network_locked_outlined),
                          ksmallWidth,
                          IconsWidget(iconName: Icons.network_check_outlined),
                          ksmallWidth,
                          IconsWidget(
                              iconName: Icons.battery_charging_full_outlined,
                              sizes: 18.0),
                    ],
                  ),
                ),
                  Container(
                    decoration: BoxDecoration(
                      color: kappBarColor),
                    child: Column(
                      children: [
                        Container(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0),
                          child: Row(
                            children: [
                              TextsWidget(texts: 'WhatsApp', colors: kgrey, fontSizes: 18.0, fontWeights: FontWeight.w600,),
                              SizedBox(width: MediaQuery.of(context).size.width*0.53),
                              Row(
                                children: [
                                  IconsWidget(iconName: FontAwesomeIcons.search, sizes: 18.0),
                                  SizedBox(width: 21.0),
                                  IconsWidget(iconName: FontAwesomeIcons.ellipsisV, sizes: 18.0)
                                ],
                              ),
                            ],
                          ),
                            ),
                            Container(
                        padding: EdgeInsets.only(top: 20.0, left: 10.0, ),
                        decoration: BoxDecoration(
                          color: kappBarColor
                        ),
                        child: Row(
                          children: [
                            IconsWidget(iconName: FontAwesomeIcons.camera, sizes: 18.0,),
                             SizedBox(width: 50.0),
                            Row(
                              children: [
                                TextsWidget(texts: 'CHATS', colors: kchatHeadings),
                                ksmallWidth,
                                Container(
                                  child: TextsWidget(texts: '25'),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0), color: kchatHeadings
                                  ),
                                ),
                             SizedBox(width: 50.0),
                                TextsWidget(texts: 'STATUS', colors: kgrey,),
                             SizedBox(width: 50.0),
                                TextsWidget(texts: 'CALLS', colors: kgrey,),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 180.0,),
                        child: TextsWidget(texts: '___________________',colors: kchatHeadings,),
                      ),
                      SizedBox(
                        child: ListviewWidget(),
                        height: MediaQuery.of(context).size.height,
                      ),
                        ],
                    ),
                  ),
                            ],
          ),
    );
  }
}
