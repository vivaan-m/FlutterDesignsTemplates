import 'package:flutter/material.dart';

class SimpleLoginDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 29,),
            InkWell(
               onTap: (){
                 Navigator.pop(context);
               },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back,color: Colors.blueAccent,),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/5,),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Login",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.w900,fontSize: 30),textAlign: TextAlign.center,),
                  SizedBox(height: 20,),
                  LoginContent(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginContent extends StatefulWidget {
  @override
  _LoginContentState createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.vpn_key),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(height: 10),
          RaisedButton(
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide:BorderSide(color: Colors.transparent)),
            onPressed: () {},
            color: Colors.blueAccent,
            elevation: 7,
            child: Text(
              "Login",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 17,),
          Text("Create New Account",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.blueAccent),)
        ],
      ),
    );
  }
}
