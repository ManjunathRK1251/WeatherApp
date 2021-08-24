import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.80,
      child: CurvedNavigationBar(
        height: 53.0,
        color: Colors.blue.withAlpha(7),
        backgroundColor: Color(0xFF070a30),
        buttonBackgroundColor: Colors.blue,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.ease,
        items: <Widget>[
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Icon(
            Icons.today,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
        onTap: (index) {},
      ),
    );
  }
}
