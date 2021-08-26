import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/forecast_report.dart';

import 'constants.dart';
import 'picklocation.dart';
import 'mainpage.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();
  void onTapped(int index) {
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
    setState(() {
      pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBackgroundColor),
      home: Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            mainpage(),
            PickLocationpage(),
            ForecastReport(),
            Center(
                child: Icon(
              Icons.settings,
              color: Colors.white,
            )),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
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
          onTap: onTapped,
        ),
      ),
    );
  }
}
