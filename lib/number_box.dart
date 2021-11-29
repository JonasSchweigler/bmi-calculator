import 'package:flutter/material.dart';
import 'constants.dart';
import 'Input_Page.dart';

class NumberBox extends StatelessWidget {
  NumberBox({
    @required this.number,
    this.boxText,
    this.plus,
    this.minus,
  });

  final int number;
  final String boxText;
  final Function plus;
  final Function minus;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          boxText,
          style: kLabelTextStyle,
        ),
        Text(
          number.toString(),
          style: kDataTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FloatingActionButton(
                onPressed: plus,
                child: Icon(
                  Icons.add,
                  size: 48,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FloatingActionButton(
                onPressed: minus,
                child: Icon(
                  Icons.remove,
                  size: 48,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
