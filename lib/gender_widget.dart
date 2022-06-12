import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  final String genderText;
  final IconData genderIcon;
  Gender(
      {this.genderIcon = FontAwesomeIcons.democrat,
      this.genderText = 'Default'});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        genderIcon,
        size: 40,
        color: Colors.black54,
      ),
      SizedBox(height: 10),
      Text(
        genderText,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
    ]);
  }
}
