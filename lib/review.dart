import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/images/profile.jpeg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";
  int stars;
  int half_stars;
  int empty_stars;

  Review(this.pathImage, this.name, this.details, this.comment, this.stars,
      this.half_stars, this.empty_stars);
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 15.0,
      ),
    );
    final half_star = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: 15.0,
      ),
    );
    final empty_star = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        size: 15.0,
      ),
    );

    final userComments = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        top: 5.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 20.0,
            top: 5.0,
          ),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 131, 131, 131),
            ),
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
    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        top: 1.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComments],
    );
    final photo = Container(
      margin: EdgeInsets.only(top: 25.0, bottom: 20.0, left: 20.0),
      alignment: Alignment.center,
      child: CircleAvatar(
        backgroundImage: AssetImage(pathImage),
        radius: 30.0,
      ),
    );
    return Row(
      children: <Widget>[photo, Expanded(child: userDetails)],
    );
  }
}
