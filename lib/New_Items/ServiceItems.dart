import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  List<Widget> _buildStarRatingButtons() {
    List<Widget> buttons = [];

    for (int rateValue = 1; rateValue <= 5; rateValue++) {
      final starRatingButton = Icon(
          int.parse("4") >= rateValue ? Icons.star : Icons.star_border,
          color: Colors.yellow,
          size: 26);
      buttons.add(starRatingButton);
    }

    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: Material(
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            "Assets/image.png",
                          ),
                          fit: BoxFit.cover)),
                ),
              )),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 230,
              width: MediaQuery.of(context).size.width - 100,
              child: Card(
                color: Colors.white,
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.only(top: 130),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 8),
                      child: Text(
                        "Service Provider Name",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _buildStarRatingButtons(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 18,
                          ),
                          Text("City Name")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class BounceAnimation extends StatefulWidget {
  @override
  _BounceAnimationState createState() => _BounceAnimationState();
}

class _BounceAnimationState extends State<BounceAnimation>
    with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController animationController;
  CurvedAnimation curvedAnimation;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(scale: animation.value,child: ServiceItem(),);
  }

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 2));
    curvedAnimation = CurvedAnimation(parent: animationController, curve: Curves.bounceOut);
    animation = Tween(begin: 0.0,end: 1.0).animate(curvedAnimation)..addListener((){
      setState(() {

      });
    });
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
