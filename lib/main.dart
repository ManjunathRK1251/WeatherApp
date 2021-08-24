import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusablecard.dart';
import 'infocard.dart';
import 'weathercard.dart';

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
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      //padding: EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(
                          'San Fransisco',
                          style: kHeadingText,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      //padding: EdgeInsets.only(top: 20.0),
                      //padding: EdgeInsets.all(50.0),
                      child: Center(
                        child: Text(
                          'May 28 2021',
                          style: kDateTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                //flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReusableButton(text: 'Forecast'),
                    ReusableButton(text: 'Air Quality'),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Image.asset(
                  'icons/sun/8.png',
                  width: 900.0,
                  height: 900.0,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoCard(
                      headingText: 'Temp',
                      text: '32°',
                    ),
                    InfoCard(
                      headingText: 'Wind',
                      text: '10 km/h',
                    ),
                    InfoCard(
                      headingText: 'Humidity',
                      text: '75%',
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    /*Padding(
                      padding: EdgeInsets.all(15.0),
                    ),*/
                    Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'View Full report',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                width: double.infinity,
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    WeatherCard(),
                    WeatherCard(),
                    WeatherCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
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
