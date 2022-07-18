import 'package:flutter/material.dart';
import 'package:travelguideapp/home_trips.dart';
import 'package:travelguideapp/profile.dart';
import 'package:travelguideapp/search.dart';

class TravelGuide extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TravelGuide();
  }
}

class _TravelGuide extends State<TravelGuide> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips(),
  ];
  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgetsChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
              onTap: onTapTapped,
              currentIndex: indexTap,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile"),
              ]),
        ));
  }
}
