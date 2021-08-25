import 'package:flutter/material.dart';
import 'constants.dart';
import 'infosearchcard.dart';

class PickLocationpage extends StatelessWidget {
  const PickLocationpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(top: 20.0),
              child: Center(
                child: Text(
                  'Pick Location',
                  style: kHeadingText,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              child: Center(
                child: Text(
                  'Find the area of the city that you want to know\n      the detailed weather info at this time',
                  style: kinfotextStyle,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blueGrey,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.amberAccent,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(10, 10)))),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 1,
            ),
            Expanded(
              flex: 1,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 2, color: Colors.white)),
                  padding: EdgeInsets.all(4),
                  child: IconButton(
                    icon: Icon(Icons.location_pin),
                    iconSize: 35,
                    splashRadius: 30,
                    color: Colors.amberAccent,
                    onPressed: () {},
                  )),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InfoSearchCard(
                  name: 'California', temp: 32.0, weather: 'Cloudy'),
              SizedBox(
                width: 10,
              ),
              InfoSearchCard(
                  name: 'California', temp: 45.0, weather: 'Cloudy')
            ],
          ),
        )
      ],
    ));
  }
}
