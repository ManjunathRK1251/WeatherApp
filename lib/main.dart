import 'package:flutter/material.dart';
import 'package:weather_app/mainpage.dart';
import 'constants.dart';
import 'picklocation.dart';

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
        //bottomNavigationBar: ,
      ),
    );
  }
}

/* 
Expanded(
              child: Container(
                //padding: EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Text(
                    'San Fransisco',
                    style: kHeadingText,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                //padding: EdgeInsets.all(50.0),
                child: Center(
                  child: Text(
                    'May 28 2021',
                    style: kDateTextStyle,
                  ),
                ),
              ),
            ),
*/
