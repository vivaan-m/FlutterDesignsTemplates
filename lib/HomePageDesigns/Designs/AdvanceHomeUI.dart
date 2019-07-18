import 'package:flutter/material.dart';
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
    controller = PageController(viewportFraction: 0.9);
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
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30))),
        elevation: 8,
        title: Text(
          "Home",
          style: TextStyle(
              fontFamily: "Sch",
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: PageView(
        physics: BouncingScrollPhysics(),
        controller: controller,
        children: <Widget>[
          InkWell(
            onTap: () {
              print("Login");
            },
            child: SlidingCard(
              assetName:
                  "Assets/Login.png",
              name: "Login",
              key: Key("Login"),
              offset: pageOffset,
            ),
          ),
          InkWell(
            onTap: () {
              print("Signup");
            },
            child: SlidingCard(
              assetName:
                  "Assets/SignUp.jpg",
              name: "Sign Up",
              key: Key("SignUp"),
              offset: pageOffset - 1,
            ),
          ),
          InkWell(
            onTap: () {
              print("About Us");
            },
            child: SlidingCard(
              assetName:
                  "Assets/Aboutus.png",
              name: "About US",
              key: Key("about"),
              offset: pageOffset - 2,
            ),
          ),
          InkWell(
            onTap: () {
              print("Settings");
            },
            child: SlidingCard(
              assetName:"Assets/setting.gif",
              name: "Settings",
              key: Key("Settings"),
              offset: pageOffset - 3,
            ),
          ),
        ],
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
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) /
        0.08)); //<--caluclate Gaussian function

    return Transform.translate(
      offset: Offset(-32 * gauss * offset.sign, 0),
      //<-- Translate the cards to make space between them
      child: Card(
        margin: EdgeInsets.only(left: 0, right: 12, bottom: 30, top: 12),
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
                fit: BoxFit.none,
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: CardContent(
                name: name,
                offset: gauss,
              ),
            ),
          ],
        ),
      ),
    );
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
            offset: Offset(34 * offset, 0),
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
