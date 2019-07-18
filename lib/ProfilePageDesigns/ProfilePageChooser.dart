import 'package:flutter/material.dart';

import 'SimpleProfileDesign.dart';

class ProfilePageChooser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Text(
          "Choose Profile Design",
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
                  context,
                  MaterialPageRoute(
                      builder: (context) => SimpleProfileDesign()));
            },
            title: Text(
              "Simple Profile Design",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Easy",
              style: TextStyle(color: Colors.white),
            ),
            enabled: true,
          ),
          ListTile(
            title: Text(
              "Good Profile Design",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Easy",
              style: TextStyle(color: Colors.white),
            ),
            enabled: true,
          ),
          ListTile(
            title: Text(
              "Better Profile Design",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Easy",
              style: TextStyle(color: Colors.white),
            ),
            enabled: true,
          ),
          ListTile(
            title: Text(
              "Advance Profile Design",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Easy",
              style: TextStyle(color: Colors.white),
            ),
            enabled: true,
          ),
        ],
      ),
    );
  }
}
