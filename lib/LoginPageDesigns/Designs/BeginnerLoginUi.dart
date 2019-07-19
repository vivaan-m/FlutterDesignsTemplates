import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class BeginnerLoginUI extends StatefulWidget {
  @override
  _BeginnerLoginUIState createState() => _BeginnerLoginUIState();
}

class _BeginnerLoginUIState extends State<BeginnerLoginUI> {
  String email, password;

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(
        Colors.transparent); //Todo: Must Add flutter_statusbarcolor: ^0.2.1

    return Scaffold(
      body: Material(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.lightBlue, Colors.lightBlueAccent])),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 80,),
                  Center(
                    child: Text(
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "right",
                          fontSize: 40),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      margin: EdgeInsets.only(top: 50),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(
                            height: 42,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 14.0, left: 14),
                            child: Material(
                              elevation: 7,
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: LinearGradient(colors: [
                                      Colors.lightBlue,
                                      Colors.lightBlueAccent
                                    ])),
                                child: TextField(
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "right",
                                        fontWeight: FontWeight.w300),
                                    onChanged: (value) {
                                      email = value;
                                    },
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "right"),
                                        prefixIcon: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30)),
                                            borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 2)))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 42,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 14.0, right: 14),
                            child: Material(
                              elevation: 7,
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: LinearGradient(colors: [
                                      Colors.lightBlue,
                                      Colors.lightBlueAccent
                                    ])),
                                child: TextField(
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "right",
                                        fontWeight: FontWeight.w300),
                                    onChanged: (value) {
                                      password = value;
                                    },
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "right"),
                                        prefixIcon: Icon(
                                          Icons.vpn_key,
                                          color: Colors.white,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.transparent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 2)))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Material(
                                elevation: 8,
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  width: 130,
                                  child: InkWell(
                                    onTap: () {},
                                    splashColor: Colors.white,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          gradient: LinearGradient(colors: [
                                            Colors.lightBlue,
                                            Colors.lightBlueAccent
                                          ])),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Center(
                                          child: Text(
                                            "Login",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontFamily: "right"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                                onTap: () {},
                                child: Text(
                                  "Create A New Account",
                                  style: TextStyle(
                                      color: Colors.lightBlueAccent,
                                      fontFamily: "right",
                                      fontSize: 16),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
