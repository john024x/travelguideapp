import 'package:flutter/material.dart';
import 'package:travelguideapp/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Stack(children: <Widget>[
      ListView(
        children: <Widget>[
          DescriptionPlace(
              "Hogwarts",
              "Hogwarts School of Witchcraft and Wizardry, often shortened to Hogwarts, was the British wizarding school, located in the Scottish Highlands. It accepted magical students from Great Britain and Ireland for enrolment. It was a state-owned school, funded by the Ministry of Magic.",
              4,
              1,
              0),
          ReviewList(),
        ],
      ),
      HeaderAppBar(),
    ]);
  }
}
