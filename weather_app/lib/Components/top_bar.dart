import 'package:flutter/material.dart';
import 'package:weather_app/utilities/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: kPrimaryColor),
          child: Icon(
            FontAwesomeIcons.locationArrow,
            color: Colors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.locationDot),
            SizedBox(
              width: 5,
            ),
            Text(
              'Batna',
              style: kNormalTextStyle,
            )
          ],
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: kPrimaryColor),
          child: Icon(
            FontAwesomeIcons.city,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
