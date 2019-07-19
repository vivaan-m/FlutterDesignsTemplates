import 'package:designs_templates/AnimatedPageRoute/SlideLeftRoute.dart';
import 'package:designs_templates/HomePageDesigns/Designs/SimpleHomeDesign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

import 'Designs/AdvanceHomeUI.dart';
import 'Designs/BeginnerHomeDesign.dart';
import 'Designs/IntermediateHomeDesign.dart';

class HomePageChooser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: Text(
          "Choose Home Design",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(60),
              bottomLeft: Radius.circular(60)),
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.push(context, SlideLeftRoute(page: SimpleHomeDesign()));
            },
            title: Text(
              "Simple Design",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Hardness Level: Easy",
              style: TextStyle(color: Colors.white),
            ),
            enabled: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, SlideLeftRoute(page: BeginnerHomeDesign()));
            },
            title: Text(
              "Beginner Design",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Hardness Level: Easy",
              style: TextStyle(color: Colors.white),
            ),
            enabled: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, SlideLeftRoute(page: IntermediateHomeDesign()));
            },
            title: Text(
              "Intermediate Design",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Hardness Level: Medium",
              style: TextStyle(color: Colors.white),
            ),
            enabled: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, SlideLeftRoute(page: AdvanceHomeUI()));
            },
            title: Text(
              "Advance Design",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Hardness Level: Hard",
              style: TextStyle(color: Colors.white),
            ),
            enabled: true,
          ),
        ],
      ),
    );
  }
}
