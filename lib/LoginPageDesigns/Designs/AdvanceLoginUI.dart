import 'package:designs_templates/utils/ScreenSize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swipedetector/swipedetector.dart';

class AdvanceLoginUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AdvanceLoginUI();
  }
}

class _AdvanceLoginUI extends State<AdvanceLoginUI> {
  bool vare = false;

  bool tappedUsername = false;
  bool tappedPassword = false;

  bool loginPressed = false;

  bool done = false;

  String username;

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.lightBlueAccent]),
          ),
          child: SingleChildScrollView(
            child: SwipeDetector(
              swipeConfiguration: SwipeConfiguration(
                verticalSwipeMinVelocity: 2,
                verticalSwipeMinDisplacement: 3,
              ),
              onSwipeUp: () {
                setState(() {
                  vare = true;
                });
              },
              onSwipeDown: () {
                setState(() {
                  vare = false;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    height: vare
                        ? screenHeight(context) * 0.12 - 10
                        : screenHeight(context) / 1.13,
                    width: screenWidth(context),
                    child: Card(
                      child: Column(
                        children: <Widget>[
                          AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            height: vare ? 0 : screenHeight(context) / 4.5,
                          ),
                          SafeArea(
                              child: AnimatedDefaultTextStyle(
                                style: TextStyle(
                                    fontFamily: "right",
                                    color: Colors.lightBlueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: vare ? 20 : 37),
                                duration: Duration(seconds: 1),
                                curve: Curves.elasticOut,
                                child: Text(
                                  "Login",
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )),
                          AnimatedContainer(
                            duration: Duration(milliseconds: vare ? 0 : 200),
                            height: vare ? 0 : 240,
                            width: double.infinity,
                            child: AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                child: content()),
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(100))),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: screenWidth(context),
                    height: vare
                        ? screenHeight(context) / 1.13
                        : screenHeight(context) * 0.12 - 10,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (vare) {
                                    vare = false;
                                  } else {
                                    vare = true;
                                  }
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Icon(
                                  vare
                                      ? FontAwesomeIcons.angleDown
                                      : FontAwesomeIcons.angleUp,
                                  size: 15,
                                ),
                              ),
                            ),
                            AnimatedOpacity(
                              duration: Duration(milliseconds: 200),
                              opacity: vare ? 0.0 : 1.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.facebook,
                                    color: Colors.blue[900],
                                  ),
                                  Icon(
                                    FontAwesomeIcons.google,
                                    color: Colors.red,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.twitter,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              width: vare ? screenWidth(context) / 1.4 : 0,
                              height: vare ? screenHeight(context) / 1.3 : 0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 200),
                                    width: vare
                                        ? screenWidth(context) / 1.4
                                        : 0,
                                    height: vare ? 68 : 0,
                                    curve: Curves.bounceOut,
                                    child: AnimatedOpacity(
                                      duration: Duration(seconds: 1),
                                      opacity: vare ? 1.0 : 0.0,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        color: Colors.blue[900],
                                        child: Row(
                                          mainAxisAlignment: vare
                                              ? MainAxisAlignment.spaceEvenly
                                              : MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              FontAwesomeIcons.facebook,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "Login With Facebook",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: vare ? 16 : 0,
                                                  fontFamily: "right"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      width: vare
                                          ? screenWidth(context) / 1.4
                                          : 0,
                                      height: vare ? 68 : 0,
                                      child: AnimatedOpacity(
                                        duration: Duration(seconds: 1),
                                        opacity: vare ? 1.0 : 0.0,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                          color: Colors.red,
                                          child: Row(
                                            mainAxisAlignment: vare
                                                ? MainAxisAlignment.spaceEvenly
                                                : MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(
                                                FontAwesomeIcons.google,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "Login With Google",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: vare ? 16 : 0,
                                                    fontFamily: "right"),
                                              )
                                            ],
                                          ),
                                        ),
                                      )),
                                  AnimatedContainer(
                                      duration: Duration(milliseconds: 200),
                                      width: vare
                                          ? screenWidth(context) / 1.4
                                          : 0,
                                      height: vare ? 68 : 0,
                                      child: AnimatedOpacity(
                                          duration: Duration(seconds: 1),
                                          opacity: vare ? 1.0 : 0.0,
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30))),
                                            color: Colors.blue,
                                            child: Row(
                                              mainAxisAlignment: vare
                                                  ? MainAxisAlignment
                                                  .spaceEvenly
                                                  : MainAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(
                                                  FontAwesomeIcons.twitter,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "Login With Facebook",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: vare ? 16 : 0,
                                                      fontFamily: "right"),
                                                )
                                              ],
                                            ),
                                          ))),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      color: Colors.white,
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100))),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  content() {
//    AdvanceLoginUI advanceLoginUI = AdvanceLoginUI();
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 6,
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 600),
              height: vare ? 0 : screenHeight(context) / 11,
              width:screenWidth(context) / 1.3,
              curve: Curves.bounceOut,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  gradient: LinearGradient(
                      colors: [Colors.lightBlueAccent, Colors.blue]),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextField(

                  onTap: () {
                    setState(() {
                      tappedUsername = true;
                    });
                  },
                  onChanged: (value){
                    setState((){username = value;});
                  },
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.white70,fontFamily: "right",fontWeight: FontWeight.w300),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 0, color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 0, color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  )),
            ),
          ),
        ),
        SizedBox(),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 6,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 600),
                height: vare ? 0 : screenHeight(context) / 11,
                width: screenWidth(context) / 1.3,
                curve: Curves.bounceOut,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                        colors: [Colors.lightBlueAccent, Colors.blueAccent])),
                child: TextField(
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.vpn_key,
                      color: Colors.white,
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white70,fontFamily: "right",fontWeight: FontWeight.w300),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.transparent)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 6,
            child: AnimatedContainer(
                duration: Duration(milliseconds: 900),
                curve: Curves.bounceOut,
                width:loginPressed?screenWidth(context)/6:screenWidth(context)/3,
                height: vare ? 00 : screenHeight(context) / 14,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Colors.lightBlueAccent,
                      Colors.lightBlueAccent
                    ])),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        loginPressed = !loginPressed;
                      });
                    },
                    child: Center(
                      child: loginPressed
                          ? CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.white))
                          : Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white,fontFamily: "right",fontWeight: FontWeight.w300),

                      ),
                    ),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
