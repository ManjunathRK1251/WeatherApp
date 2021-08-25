import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:weather_app/mainpage.dart';
import 'constants.dart';
import 'picklocation.dart';
=======

import 'constants.dart';
// import 'reusablecard.dart';
// import 'infocard.dart';
// import 'weathercard.dart';
import 'mainpage.dart';
import 'navbar.dart';
>>>>>>> 4a72b084bef3ca222d8a6e2b7366046e011d7e42

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kBackgroundColor),
      home: Scaffold(
        //backgroundColor: Color(0xFF070a30),
        body: mainpage(),
        bottomNavigationBar: NavigationBar(),
      ),
    );
  }
}
