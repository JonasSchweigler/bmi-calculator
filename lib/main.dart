import 'package:flutter/material.dart';
import 'Input_Page.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.grey[600],
        ),
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xF000000),
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.grey,
          inactiveTrackColor: kActiveColor,
          thumbColor: Color(0xFFB72C1C),
          overlayColor: Color(0x29B72C1C),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 30,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
