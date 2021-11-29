import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_const.dart';
import 'renewable_widget.dart';
import 'constants.dart';
import 'number_box.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

enum Type {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Type selectedType;
  int height = 180;
  int age = 40;
  int weight = 80;

  void agecounter(age) {
    age <= 250 ? age = 250 : age++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.red[900],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: RenewableWidget(
                  onPress: () {
                    setState(() {
                      selectedType = Type.male;
                    });
                  },
                  color:
                      selectedType == Type.male ? kActiveColor : kInactiveColor,
                  cardChild: IconConst(
                    gender: 'Male',
                    genderIcon: FontAwesomeIcons.mars,
                  ),
                ),
              ),
              Expanded(
                child: RenewableWidget(
                  onPress: () {
                    setState(() {
                      selectedType = Type.female;
                    });
                  },
                  color: selectedType == Type.female
                      ? kActiveColor
                      : kInactiveColor,
                  cardChild: IconConst(
                    gender: 'Female',
                    genderIcon: FontAwesomeIcons.venus,
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: RenewableWidget(
              color: kInactiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kDataTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 80.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RenewableWidget(
                    color: kInactiveColor,
                    cardChild: NumberBox(
                      number: weight,
                      boxText: 'WEIGHT',
                      plus: () {
                        setState(() {
                          weight != 120 ? weight++ : weight = 120;
                        });
                      },
                      minus: () {
                        setState(() {
                          weight != 0 ? weight-- : weight = 0;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: RenewableWidget(
                    color: kInactiveColor,
                    cardChild: NumberBox(
                      number: age,
                      boxText: 'AGE',
                      plus: () {
                        setState(() {
                          age != 120 ? age++ : age = 120;
                        });
                      },
                      minus: () {
                        setState(() {
                          age != 0 ? age-- : age = 0;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
