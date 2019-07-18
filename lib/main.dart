import 'package:designs_templates/AnimatedPageRoute/SlideLeftRoute.dart';
import 'package:flutter/material.dart';

import 'HomePageDesigns/HomePageChooser.dart';
import 'LoginPageDesigns/LoginPageChooser.dart';
import 'New_Items/FacebookOnlySlider.dart';
import 'ProfilePageDesigns/ProfilePageChooser.dart';
import 'SettingPageDesigns/SettingPageChooser.dart';

void main() => runApp(MaterialApp(
    title: "Design Templates",
    debugShowCheckedModeBanner: false,
    home: MainScreen()));

class MainScreen extends StatelessWidget {
  List<String> templateNames = [
    "Home Designs",
    "Profile Designs",
    "Login Designs",
    "Setting Designs"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(60),
                  bottomLeft: Radius.circular(60))),
          elevation: 6,
          title: Text(
            "Design Templates",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) => BounceAnimation(index)));
  }

  Widget _itemMainScreen(int index, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, SlideLeftRoute(page: _onclick(index)));
      },
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: Card(
                  elevation: 6,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Center(
                        child: Text(templateNames[index],
                            style:
                                TextStyle(color: Colors.white, fontSize: 24))),
                  ),
                )),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width - 60,
            top: 67,
            child: SizedBox(
                width: 50,
                height: 50,
                child: Card(
                  color: Colors.red,
                  elevation: 6,
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.forward,
                    color: Colors.white,
                  ),
                )),
          ),
          SizedBox(
              width: 130,
              height: 130,
              child: Card(
                color: Colors.red,
                child: Icon(
                  _Icons(index),
                  color: Colors.white,
                  size: 50,
                ),
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              )),
        ],
      ),
    );
  }

  IconData _Icons(int index) {
    if (index == 0) {
      return Icons.home;
    } else if (index == 1) {
      return Icons.account_circle;
    } else if (index == 2) {
      return Icons.lock;
    } else if (index == 3) {
      return Icons.settings;
    }
  }

  _onclick(index) {
    if (index == 0) {
      return HomePageChooser();
    } else if (index == 1) {
      return ProfilePageChooser();
    } else if (index == 2) {
      return LoginPageChooser();
    } else if (index == 3) {
      return SettingPageChooser();
    }
  }
}

class BounceAnimation extends StatefulWidget {
  int index;

  BounceAnimation(this.index);

  @override
  _BounceAnimationState createState() => _BounceAnimationState(index);
}

class _BounceAnimationState extends State<BounceAnimation>
    with SingleTickerProviderStateMixin {
  int index;

  _BounceAnimationState(this.index);

  MainScreen _mainScreen = MainScreen();

  Animation<double> animation;
  AnimationController animationController;
  CurvedAnimation curvedAnimation;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: animation.value,
      child: _mainScreen._itemMainScreen(index, context),
    );
  }

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));
    curvedAnimation =
        CurvedAnimation(parent: animationController, curve: Curves.bounceOut);
    animation = Tween(begin: 0.0, end: 1.0).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      });
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
