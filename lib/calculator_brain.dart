import 'dart:math';

class CalculateBrain {
  int height;
  int weight;

  double _bmi = 0;

  CalculateBrain(this.height, this.weight);

  getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  getInterpretation() {
    print(getBMI());
    if (_bmi >= 40) {
      return 'You\'re way way too fat';
    } else if (_bmi >= 35) {
      return 'You\'re way too fat';
    } else if (_bmi >= 30) {
      return 'You\'re too fat';
    } else if (_bmi >= 25) {
      return 'You\'re fat';
    } else if (_bmi >= 18.5) {
      return 'You\'re fit. Keep it up';
    } else if (_bmi < 18.5) {
      return 'You weigh too less. Try to eat more';
    }
  }

  getText() {
    print(getBMI());
    if (_bmi >= 40) {
      return 'OBESE class III';
    } else if (_bmi >= 35) {
      return 'OBESE class II';
    } else if (_bmi >= 30) {
      return 'OBESE class I';
    } else if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL WEIGHT';
    } else if (_bmi < 18.5) {
      return 'UNDERWEIGHT';
    }
  }
}
