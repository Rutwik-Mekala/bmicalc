//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'block_style.dart';
import 'calculator_brain.dart';
import 'result_page.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 80;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade500,
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                    color: selectedGender == Gender.male
                        ? Colors.red
                        : Colors.red.shade300,
                    cardChild: BlockStyle(
                      icon: FontAwesomeIcons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    color: selectedGender == Gender.female
                        ? Colors.red
                        : Colors.red.shade300,
                    cardChild: BlockStyle(
                      icon: FontAwesomeIcons.female,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ReusableCard(
              color: Colors.green,
              cardChild: Column(
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 70,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Colors.yellow,
                      inactiveColor: Colors.red,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      }),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: Colors.purple,
              cardChild: Column(
                children: [
                  Text(
                    'WEIGHT',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        weight.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 70,
                        ),
                      ),
                      Text(
                        'kg',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  Slider(
                      value: weight.toDouble(),
                      min: 40,
                      max: 120,
                      activeColor: Colors.yellow,
                      inactiveColor: Colors.red,
                      onChanged: (double newValue) {
                        setState(() {
                          weight = newValue.round();
                        });
                      }),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculateBrain calc = CalculateBrain(height, weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                      bmitext: calc.getText(),
                      bmiresult: calc.getBMI(),
                      bmiinterpretation: calc.getInterpretation()),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),
              color: Colors.pink,
              height: 80,
              child: Text(
                'CALCULATE',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
