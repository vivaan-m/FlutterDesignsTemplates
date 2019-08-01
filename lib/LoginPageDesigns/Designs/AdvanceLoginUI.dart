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
                          ))
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
              ) ,
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                width: vare ? screenWidth(context) / 1.4 : 0,
                                height: vare ? 68 : 0,
                                curve: Curves.bounceOut,
                                child: AnimatedOpacity(
                                  duration: Duration(seconds: 1),
                                  opacity: vare ? 1.0 : 0.0,
                                  child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                                    color: Colors.blue[900],
                                    child: Row(
                                      mainAxisAlignment:
                                          vare?MainAxisAlignment.spaceEvenly:MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          FontAwesomeIcons.facebook,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Login With Facebook",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: vare?16:0,
                                              fontFamily: "right"),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  width: vare ? screenWidth(context) / 1.4 : 0,
                                  height: vare ? 68 : 0,
                                  child: AnimatedOpacity(
                                    duration: Duration(seconds: 1),
                                    opacity: vare ? 1.0 : 0.0,
                                    child: Card(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                                      color: Colors.red,
                                      child: Row(
                                        mainAxisAlignment:
                                        vare?MainAxisAlignment.spaceEvenly:MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            FontAwesomeIcons.google,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "Login With Google",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: vare?16:0,
                                                fontFamily: "right"),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                              AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  width: vare ? screenWidth(context) / 1.4 : 0,
                                  height: vare ? 68 : 0,
                                  child: AnimatedOpacity(
                                      duration: Duration(seconds: 1),
                                      opacity: vare ? 1.0 : 0.0,
                                      child: Card(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                                        color: Colors.blue,
                                        child: Row(
                                          mainAxisAlignment:
                                          vare?MainAxisAlignment.spaceEvenly:MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              FontAwesomeIcons.twitter,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "Login With Facebook",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: vare?16:0,
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
}
