import 'package:flutter/material.dart';
import 'package:travelguideapp/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350.0,
        child: ListView(
          padding: EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardImage("assets/images/hogwarts.jpeg"),
            CardImage("assets/images/tattoine.jpeg"),
            CardImage("assets/images/redkeep.jpeg"),
            CardImage("assets/images/theshire.jpeg"),
            CardImage("assets/images/vormir.png"),
            CardImage("assets/images/gothamcity.jpeg"),
          ],
        ));
  }
}
