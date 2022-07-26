import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMIcalc());

class BMIcalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.pink,
          scaffoldBackgroundColor: Colors.lightBlue.shade600),
      home: InputPage(),
    );
  }
}
