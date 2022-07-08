import 'package:flutter/material.dart';
import 'package:travelguideapp/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  // String namePlace = "Hogwarts";
  // String nameDescription =
  //     "Hogwarts School of Witchcraft and Wizardry, often shortened to Hogwarts, was the British wizarding school, located in the Scottish Highlands. It accepted magical students from Great Britain and Ireland for enrolment. It was a state-owned school, funded by the Ministry of Magic.";
  // int stars = 6;
  String namePlace;
  String nameDescription;
  int stars;
  int half_stars;
  int empty_stars;
  DescriptionPlace(this.namePlace, this.nameDescription, this.stars,
      this.half_stars, this.empty_stars);
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );
    final half_star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );
    final empty_star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );
    final description = Container(
        margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Text(
          nameDescription,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
          ),
        ));

    final titleStar = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            for (int i = 0; i < stars; i++) star,
            for (int i = 0; i < half_stars; i++) half_star,
            for (int i = 0; i < empty_stars; i++) empty_star,
          ],
        ),
      ],
    );
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[titleStar, description, ButtonPurple('Navigate')]);
  }
}
