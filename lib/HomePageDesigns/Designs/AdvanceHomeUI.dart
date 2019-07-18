import 'package:flutter/material.dart';

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
    controller.addListener((){
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
          SlidingCard(
            assetName:
                "https://cdn.dribbble.com/users/2612518/screenshots/6445446/login_illustration.png",
            name: "Login",
            key: Key("Login"),
            offset:pageOffset;
          ),
          SlidingCard(
            assetName:
                "https://cdn.dribbble.com/users/1537480/screenshots/5404724/free_signup.jpg",
            name: "Sign Up",
            key: Key("SignUp"),
          ),
          SlidingCard(
            assetName:
                "https://cdn.dribbble.com/users/734476/screenshots/4013954/artboard_2.png",
            name: "About US",
            key: Key("about"),
          ),
        ],
      ),
    );
  }
}

class SlidingCard extends StatelessWidget {
  final String name;
  final String assetName;

  const SlidingCard({
    Key key,
    @required this.name,
    @required this.assetName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 0, right: 12, bottom: 30, top: 12),
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      //<--custom shape
      child: Column(
        children: <Widget>[
          ClipRRect(
            //<--clipping image
            borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
            child: Image.network(
              //<-- main image
              '$assetName',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Expanded(
            child: CardContent(name: name),
          ),
        ],
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final String name;

  const CardContent({
    Key key,
    @required this.name,
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
              child: Text(name,
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                      fontFamily: "right"))),
          SizedBox(height: 8),
          Spacer(),
        ],
      ),
    );
  }
}
