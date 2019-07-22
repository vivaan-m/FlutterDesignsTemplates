import 'package:flutter/material.dart';

class IntermediateHomeUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Colors.blueAccent],
            )),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    SlideDownAnimation(),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                MainContentAnimation(),
                SizedBox(
                  height: 20,
                ),
                SlideRightIn(),
                SlideLeftIn()
              ],
            ),
          ),
        ),
      ),
    );
  }

  content() {
    return SizedBox(
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
                bottomLeft: Radius.circular(33),
                topRight: Radius.circular(49),
                topLeft: Radius.circular(100))),
        margin: EdgeInsets.all(6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    gradient: LinearGradient(
                        colors: [Colors.lightBlueAccent, Colors.blue]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(50))),
                child: TextField(
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintText: "Username",
                      hintStyle: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.w500),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(50))),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0, color: Colors.transparent),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(50))),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0, color: Colors.transparent),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(50)),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(0)),
                    gradient: LinearGradient(
                        colors: [Colors.lightBlueAccent, Colors.blueAccent])),
                child: TextField(
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                  obscureText: false,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.vpn_key,
                        color: Colors.white,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white70),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(0))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(0)),
                          borderSide: BorderSide(color: Colors.transparent)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(0),
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(0)))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>

loginButton() {
  return Align(
    alignment: Alignment.centerRight,
    child: SizedBox(
      height: 60,
      width: 140,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(30)),
            color: Colors.white),
        child: FlatButton(
          padding: EdgeInsets.all(10),
          child: Text(
            "Login >>",
            style: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.w600,
                fontFamily: "right",
                fontSize: 25),
          ),
        ),
      ),
    ),
  );
}
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>

droppingLogin() {
  return SizedBox(
    width: 300,
    height: 150,
    child: Card(
      margin: EdgeInsets.only(left: 160),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(80))),
      elevation: 8,
      child: Column(
        children: <Widget>[
          Spacer(),
          Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightBlue,
                fontFamily: "right",
                fontWeight: FontWeight.bold,
                fontSize: 35),
          ),
          Spacer(),
        ],
      ),
    ),
  );
}
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>

signUpButton() {
  return Align(
    alignment: Alignment.centerLeft,
    child: SizedBox(
      height: 60,
      width: 140,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(30)),
            color: Colors.white),
        child: FlatButton(
          padding: EdgeInsets.all(10),
          child: Text(
            "<< Signup",
            style: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.w600,
                fontFamily: "right",
                fontSize: 25),
          ),
        ),
      ),
    ),
  );
}
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>

class SlideDownAnimation extends StatefulWidget {
  @override
  _SlideDownAnimationState createState() => _SlideDownAnimationState();
}

class _SlideDownAnimationState extends State<SlideDownAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> animation, animationLeftIn, animationRightIn;
  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    curvedAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeOut);

    animation = Tween(begin: Offset(00, -200), end: Offset(00, 00))
        .animate(curvedAnimation)
          ..addListener(() {
            setState(() {});
          });

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: animation.value,
      child: droppingLogin(),
    );
  }
}
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>
class SlideLeftIn extends StatefulWidget {
  @override
  _SlideLeftInState createState() => _SlideLeftInState();
}

class _SlideLeftInState extends State<SlideLeftIn>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> animationLeftIn;
  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    curvedAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    animationLeftIn = Tween(begin: Offset(-300, 0), end: Offset(00, 00))
        .animate(curvedAnimation)
          ..addListener(() {
            setState(() {});
          });
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Transform.translate(
          offset: animationLeftIn.value,
          child: signUpButton(),
        ),
      ],
    );
  }
}
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>
class SlideRightIn extends StatefulWidget {
  @override
  _SlideRightInState createState() => _SlideRightInState();
}

class _SlideRightInState extends State<SlideRightIn>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> animationRightIn;
  CurvedAnimation curvedAnimation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    curvedAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    animationRightIn = Tween(begin: Offset(300, 0), end: Offset(00, 00))
        .animate(curvedAnimation)
          ..addListener(() {
            setState(() {});
          });
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Transform.translate(
          offset: animationRightIn.value,
          child: loginButton(),
        ),
      ],
    );
  }
}
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>
class MainContentAnimation extends StatefulWidget {
  @override
  _MainContentAnimationState createState() => _MainContentAnimationState();
}

class _MainContentAnimationState extends State<MainContentAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  CurvedAnimation curvedAnimation;
  Animation<double> animation;
  IntermediateHomeUI _homeUI = IntermediateHomeUI();

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 7));
    curvedAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.elasticOut);
    animation = Tween(begin: 0.0, end: 1.0).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: animation.value,
      child: _homeUI.content(),
    );
  }
}
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>
//<_______________________________________________________________________________>
