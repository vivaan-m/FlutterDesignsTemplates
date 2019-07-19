import 'package:designs_templates/AnimatedPageRoute/SlideLeftRoute.dart';
import 'package:designs_templates/AnimatedPageRoute/SlideRightRoute.dart';
import 'package:flutter/material.dart';

import 'package:designs_templates/LoginPageDesigns/Designs/SimpleLoginDesign.dart';

import 'Designs/BeginnerLoginUi.dart';

class LoginPageChooser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Choose Login Design",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50)),
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.push(
                  context, SlideLeftRoute(page: SimpleLoginDesign()));
            },
            title: Text(
              "Simple Login Design",
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
                  context, SlideLeftRoute(page: BeginnerLoginUI()));
            },
            title: Text(
              "Beginner Login Design",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Hardness Level: Easy",
              style: TextStyle(color: Colors.white),
            ),
            enabled: true,
          ),
          ListTile(
            title: Text(
              "Intermediate Login Design",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Hardness Level: Medium",
              style: TextStyle(color: Colors.white),
            ),
            enabled: true,
          ),
          ListTile(
            title: Text(
              "Advance Login Design",
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
