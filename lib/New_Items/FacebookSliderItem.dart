import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class FacebookSliderItem extends StatelessWidget {
  List<Widget> images = [
    Image.network(
      "https://cdn.dribbble.com/users/1208648/screenshots/3357662/young2.jpg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://cdn.dribbble.com/users/1450667/screenshots/3215485/lunaflutter.jpg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://cdn.dribbble.com/users/17559/screenshots/6316201/figma.png",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://cdn.dribbble.com/users/1208648/screenshots/3513930/two1blue.jpg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://cdn.dribbble.com/users/94598/screenshots/417087/heartaflutter.jpg",
      fit: BoxFit.cover,
    ),
  ];

  String description =
      "It is a random description for testing kindly ignore and stop reading it look at the image and try to understand what i am trying to tell you stop reading it and look at the item i just made now please stop reading it ohhhh damn man stop reading it please ,fine i am done with you bie";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Stack(
        children: <Widget>[
          SizedBox(
            height: 169,
            width: MediaQuery.of(context).size.width,
            child: Carousel(
              boxFit: BoxFit.cover,
              borderRadius: true,
              radius: Radius.circular(50),
              dotColor: Colors.white,
              dotBgColor: Colors.transparent,
              dotSize: 4,
              defaultImage: Image.asset("Assets/loading.png"),
              autoplay: false,
              showIndicator: true,
              dotPosition: DotPosition.topCenter,
              images: images,
            ),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                margin: EdgeInsets.only(top: 160),
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(description,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.blueGrey),),
                ),
              ))
        ],
      ),
    );
  }
}
