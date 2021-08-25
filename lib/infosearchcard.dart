import 'package:flutter/material.dart';

import 'constants.dart';

class InfoSearchCard extends StatelessWidget {
  InfoSearchCard(
      {required this.name, required this.temp, required this.weather});
  final String name;
  final double temp;
  final String weather;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 13.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.0),
        ),
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 140.0,
            height: 80.0,
            child: Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            '$temp*',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            weather,
                            style: TextStyle(
                              fontSize: 8.0,
                              color: Colors.white38,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white38,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('icons/sun/8.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
