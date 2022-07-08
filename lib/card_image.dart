import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  String pathImage = "assets/images/hogwarts.jpeg";
  CardImage(this.pathImage);
  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 300.0,
      width: 250.0,
      margin: EdgeInsets.only(
        top: 120.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            blurRadius: 12.0,
            offset: Offset(0.0, 7.0),
          ),
        ],
      ),
    );
    return card;
  }
}
