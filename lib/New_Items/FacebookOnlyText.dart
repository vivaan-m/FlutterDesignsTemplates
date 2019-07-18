import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class FacebookOnlyText extends StatelessWidget {
  String description =
      "It is a random description for testing kindly ignore and stop reading it look at the image and try to understand what i am trying to tell you stop reading it and look at the item i just made now please stop reading it ohhhh damn man stop reading it please ,fine i am done with you bie";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Stack(
        children: <Widget>[
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    description,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.blueGrey),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
