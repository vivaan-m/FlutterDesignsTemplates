import 'package:flutter/material.dart';

class BeginnerHomeDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.blueAccent])),
          child: SingleChildScrollView(
            physics: PageScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
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
                Center(
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 30,fontFamily: "right "),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      elevation: 2,
                      child: Column(
                        children: <Widget>[
                          GridView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 4,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemBuilder: (context, index) => _itemHome(index)),
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
    return Card(
      color: Colors.blueAccent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      elevation: 6,
      margin: EdgeInsets.all(20),
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
    );
  }
}
