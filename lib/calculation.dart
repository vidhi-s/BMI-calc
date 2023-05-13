import 'dart:math';

class calculation {
  calculation({required this.height, required this.weight});
  int height;
  int weight;
  double _bmi = 18.0;
  String getbmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Trying to normalize obesity huh??';
    } else if (_bmi >= 18.5) {
      return 'Good Job,normie';
    } else {
      return 'Ghar pe khana nahi milta kya??';
    }
  }
}
