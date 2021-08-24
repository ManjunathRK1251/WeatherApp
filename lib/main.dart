import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusablecard.dart';
import 'infocard.dart';
import 'weathercard.dart';
import 'mainpage.dart';
import 'navbar.dart';

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
