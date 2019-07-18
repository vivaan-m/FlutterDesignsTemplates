import 'package:flutter/material.dart';

class IntermediateHomeDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.blueAccent])),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    InkWell(
                      borderRadius: BorderRadius.circular(40),
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
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30))),
                      borderOnForeground: false,
                      color: Colors.white,
                      child: ListView(
                        children: <Widget>[
                          SizedBox(
                            height: 25,
                          ),
                          EnterFromLeft(0, 2),
                          SizedBox(
                            height: 12,
                          ),
                          EnterFromRight(1, 3),
                          SizedBox(
                            height: 12,
                          ),
                          EnterFromLeft(2, 4),
                          SizedBox(
                            height: 12,
                          ),
                          EnterFromRight(3, 4),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  _itemHome(int index) {
    IconData _checkidexicon(index) {
      if (index == 0) {
        return Icons.lock;
      } else if (index == 1) {
        return Icons.group_add;
      } else if (index == 2) {
        return Icons.info;
      } else if (index == 3) {
        return Icons.settings;
      }
    }

    List<String> items = ["Login", "SignUp", "About", "Setting"];
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 30),
      child: Material(
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                bottomRight: Radius.circular(40))),
        child: Container(
          decoration: ShapeDecoration(
              gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.blueAccent]),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(40)))),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              splashColor: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    _checkidexicon(index),
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    items[index],
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _itemReverseHome(int index) {
    IconData _checkidexicon(index) {
      if (index == 0) {
        return Icons.lock;
      } else if (index == 1) {
        return Icons.group_add;
      } else if (index == 2) {
        return Icons.info;
      } else if (index == 3) {
        return Icons.settings;
      }
    }

    List<String> items = ["Login", "SignUp", "About", "Setting"];
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 30),
      child: Material(
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), bottomLeft: Radius.circular(40))),
        child: Container(
          decoration: ShapeDecoration(
              gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.blueAccent]),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40)))),
          child: InkWell(
            splashColor: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    _checkidexicon(index),
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    items[index],
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EnterFromLeft extends StatefulWidget {
  int index;
  int sec;

  EnterFromLeft(this.index, this.sec);

  @override
  _EnterFromLeftState createState() => _EnterFromLeftState(index, sec);
}

class _EnterFromLeftState extends State<EnterFromLeft>
    with SingleTickerProviderStateMixin {
  int index;
  int sec;

  _EnterFromLeftState(this.index, this.sec);

  IntermediateHomeDesign _design = IntermediateHomeDesign();
  Animation<Offset> _animation;
  AnimationController _animationController;
  CurvedAnimation _curvedAnimation;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: _animation.value,
      child: _design._itemHome(index),
    );
  }

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: sec));
    _curvedAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn);
    _animation = Tween(begin: Offset(-600, 0), end: Offset(0, 0))
        .animate(_curvedAnimation)
          ..addListener(() {
            setState(() {});
          });
    _animationController.forward();
  }
}

class EnterFromRight extends StatefulWidget {
  int index;
  int sec;

  EnterFromRight(this.index, this.sec);

  @override
  _EnterFromRightState createState() => _EnterFromRightState(index, sec);
}

class _EnterFromRightState extends State<EnterFromRight>
    with SingleTickerProviderStateMixin {
  int index;
  int sec;

  _EnterFromRightState(this.index, this.sec);

  IntermediateHomeDesign _design = IntermediateHomeDesign();
  Animation<Offset> _animation;
  AnimationController _animationController;
  CurvedAnimation _curvedAnimation;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: _animation.value,
      child: _design._itemReverseHome(index),
    );
  }

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: sec));
    _curvedAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn);
    _animation = Tween(begin: Offset(600, 0), end: Offset(0, 0))
        .animate(_curvedAnimation)
          ..addListener(() {
            setState(() {});
          });
    _animationController.forward();
  }
}
