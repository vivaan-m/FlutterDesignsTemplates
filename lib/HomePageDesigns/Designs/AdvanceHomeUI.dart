import 'package:designs_templates/AnimatedPageRoute/SlideRightRoute.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:swipedetector/swipedetector.dart';
import 'package:toast/toast.dart';
import 'dart:math' as math;

class AdvanceHomeUI extends StatefulWidget {
  @override
  _AdvanceHomeUIState createState() => _AdvanceHomeUIState();
}

class _AdvanceHomeUIState extends State<AdvanceHomeUI> {
  PageController controller;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController();
    controller.addListener(() {
      setState(() {
        pageOffset = controller.page;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SwipeDetector(
      swipeConfiguration: SwipeConfiguration(
          verticalSwipeMinDisplacement: 1, verticalSwipeMinVelocity: 2),
      onSwipeUp: () {
        if (controller.page == 0) {
          Navigator.push(
              context, SlideUPFromDownRoute(page: JustAScreen("Login")));
        } else if (controller.page == 1) {
          Navigator.push(
              context, SlideUPFromDownRoute(page: JustAScreen("SignUp")));
        } else if (controller.page == 2) {
          Navigator.push(
              context, SlideUPFromDownRoute(page: JustAScreen("AboutUs")));
        } else if (controller.page >= 2.6) {
          Navigator.push(
              context, SlideUPFromDownRoute(page: JustAScreen("Settings")));
        }
      },
      child: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          leading: InkWell(
            child: Icon(
              Icons.arrow_back,
              color: Colors.lightBlue,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30))),
          elevation: 8,
          title: Text(
            "Home",
            style: TextStyle(
                fontFamily: "Sch",
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.blueAccent,Colors.lightBlueAccent])),
          child: Column(
            children: <Widget>[

              SizedBox(
                height: 530,
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: controller,
                  children: <Widget>[
                    SlidingCard(
                      assetName: "Assets/Login.png",
                      name: "Login",
                      key: Key("Login"),
                      offset: pageOffset,
                    ),
                    SlidingCard(
                      assetName: "Assets/SignUp.jpg",
                      name: "Sign Up",
                      key: Key("SignUp"),
                      offset: pageOffset - 1,
                    ),
                    SlidingCard(
                      assetName: "Assets/Aboutus.png",
                      name: "About US",
                      key: Key("about"),
                      offset: pageOffset - 2,
                    ),
                    SlidingCard(
                      assetName: "Assets/setting.gif",
                      name: "Settings",
                      key: Key("Settings"),
                      offset: pageOffset,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Card(
                      shape: CircleBorder(),
                      child: Center(
                          child: Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.blueGrey,
                        size: 30,
                      )),
                    ),
                  ),
                  Text(
                    "Swipe Up To Open Above Mentioned Option",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "right",
                        fontSize: 16),
                  ),
                ],
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

class SlidingCard extends StatelessWidget {
  final String name;
  final String assetName;
  final double offset;

  const SlidingCard(
      {Key key,
      @required this.name,
      @required this.assetName,
      @required this.offset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);

    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) /
        0.08)); //<--caluclate Gaussian function

    return Transform.translate(
        offset: Offset(-160 * gauss * offset.sign, 0),
        //<-- Translate the cards to make space between them
        child: SlideUpAnimation(
          name: name,
          assetName: assetName,
          offset: offset,
        ));
  }
}

class CardContent extends StatelessWidget {
  final String name;
  final double offset;

  const CardContent({
    Key key,
    @required this.name,
    @required this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Spacer(),
          Center(
              child: Transform.translate(
            offset: Offset(00, 0),
            child: Text(name,
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                    color: Colors.blueGrey,
                    fontFamily: "right")),
          )),
          SizedBox(height: 8),
          Spacer(),
        ],
      ),
    );
  }
}

class SlideUpAnimation extends StatefulWidget {
  final String name;
  final String assetName;
  final double offset;

  const SlideUpAnimation({
    Key key,
    this.name,
    this.assetName,
    this.offset,
  }) : super(key: key);

  @override
  _SlideUpAnimationState createState() => _SlideUpAnimationState(
        name,
        assetName,
        offset,
      );
}

class _SlideUpAnimationState extends State<SlideUpAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<Offset> animation;
  CurvedAnimation curvedAnimation;
  final String name;
  final String assetName;
  final double offset;

  _SlideUpAnimationState(
    this.name,
    this.assetName,
    this.offset,
  );

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    curvedAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticOut);
    animation = Tween(begin: Offset(0, 900), end: Offset(00, 00))
        .animate(curvedAnimation)
          ..addListener(() {
            setState(() {});
          });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: animation.value,
      child: Card(
        margin: EdgeInsets.only(left: 12, right: 12, bottom: 70, top: 12),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        //<--custom shape
        child: Column(
          children: <Widget>[
            ClipRRect(
              //<--clipping image
              borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              child: Image.asset(
                //<-- main image
                '$assetName',
                alignment: Alignment(-offset.abs(), 0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: CardContent(
                name: name,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JustAScreen extends StatelessWidget {
  String name;

  JustAScreen(this.name);

  @override
  Widget build(BuildContext context) {
    return SwipeDetector(
        swipeConfiguration: SwipeConfiguration(
            verticalSwipeMinDisplacement: 1, verticalSwipeMinVelocity: 2),
        onSwipeDown: () {
          Navigator.pop(context);
        },
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "$name\n\n\nSwipe Down To Go Back",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30, fontFamily: "Sch", color: Colors.white),
              ),
              SizedBox(
                  width: 60,
                  height: 50,
                  child: Card(
                    shape: CircleBorder(),
                    elevation: 3,
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.blueGrey,
                      size: 30,
                    ),
                  ))
            ],
          )),
        ));
  }
}
