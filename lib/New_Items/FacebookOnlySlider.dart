import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class FacebookOnlySlider extends StatelessWidget {
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
        ],
      ),
    );
  }
}
