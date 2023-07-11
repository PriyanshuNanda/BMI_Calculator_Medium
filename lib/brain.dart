import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({required this.height,required this.weight});
  final int height;
  final int weight;
  double _bmi=20;
  String calculateBMI(){
    _bmi=(weight/(pow(height,2)))*10000;
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25){return 'Overweight';}
    else if(_bmi>18.5){return 'Normal';}
    else{return 'Underweight';}
  }
  String getInterpretation(){
    if(_bmi>=25){return 'Excercise more!!!';}
    else if(_bmi>18.5){return 'Good Job! You are normal. You can eat more!!';}
    else {return 'Eat more no matter what!!!';}
  }
}