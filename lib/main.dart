import 'package:flutter/material.dart';
import 'constants.dart';

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
        body: Column(
          children: [
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
              flex: 3,
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
          ],
        ),
      ),
    );
  }
}

class ReusableButton extends StatelessWidget {
  final String text;

  ReusableButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: Container(
        width: 85.0,
        height: 30.0,
        padding: EdgeInsets.all(7.0),
        child: Center(
            child: Text(
          text,
          style: kButtonTextStyle,
        )),
      ),
    );
  }
}
