import 'package:flutter/material.dart';

class RenewableWidget extends StatelessWidget {
  RenewableWidget({
    @required this.color,
    this.cardChild,
    this.onPress,
  });
  final Color color;
  final Function onPress;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
