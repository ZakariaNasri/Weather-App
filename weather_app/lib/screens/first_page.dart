import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/utilities/constants.dart';
import 'package:weather_app/Components/top_bar.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.symmetric(vertical: 30),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(flex: 1, child: TopBar()),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: Image(image: AssetImage('images/thunder.png'))),
                  Text(
                    '16°',
                    style: kDegreeTextStyle,
                  ),
                  Text(
                    'Thunder',
                    style: kNormalTextStyle,
                  ),
                  Text('wednesday,31 March')
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: kPrimaryColor, // Color of the borders
                    width: 2, // Width of the borders
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                'Try to Take a Coat just in case ',
                style: kQuoteTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
