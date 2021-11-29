import 'package:flutter/material.dart';
import 'constants.dart';

class IconConst extends StatelessWidget {
  IconConst({@required this.gender, this.genderIcon});
  final String gender;
  final IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          width: 1,
          height: 15,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
