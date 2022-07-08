import 'package:flutter/material.dart';
import 'package:travelguideapp/review.dart';

class ReviewList extends StatelessWidget {
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

    final listofReviews = Column(
      children: <Widget>[
        Review('assets/images/profile.jpeg', 'Hermione Granger',
            '1 review 5 photos', 'The astronomy tower is awesome!', 5, 0, 0),
        Review('assets/images/profile.jpeg', 'Harry Potter',
            '1 review 5 photos', 'The astronomy tower is awesome!', 5, 0, 0),
        Review('assets/images/profile.jpeg', 'Ron Weasley', '1 review 5 photos',
            'The astronomy tower is awesome!', 5, 0, 0),
        Review('assets/images/profile.jpeg', 'Ginny W.', '1 review 5 photos',
            'The astronomy tower is awesome!', 5, 0, 0)
      ],
    );
    return listofReviews;
  }
}
