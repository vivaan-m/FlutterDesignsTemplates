import 'package:flutter/material.dart';

class SimpleHomeDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 6,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.home,color: Colors.white,),
            SizedBox(width: 5,),
            Text("HOME"),
            SizedBox(width: 5,),
            Icon(Icons.home,color: Colors.white,),
          ],
        ),
        leading: InkWell(
          onTap: (){Navigator.pop(context);},
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: GridView.builder(
            physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) => _itemHome(index)),
        ),
      ),
    );
  }
}

_itemHome(int index) {
  IconData _checkidexicon(index){
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
      onTap:(){},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(_checkidexicon(index),size: 30,color: Colors.white,),
          Text(
            items[index],
            style: TextStyle(fontSize:25,color: Colors.white),
          )
        ],
      ),
    ),
  );
}
