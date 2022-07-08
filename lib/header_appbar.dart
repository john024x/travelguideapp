import 'package:flutter/material.dart';
import 'package:travelguideapp/card_image_list.dart';
import 'package:travelguideapp/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Popular"),
        CardImageList(),
      ],
    );
  }
}
