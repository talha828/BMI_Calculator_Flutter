import 'dart:math';
import 'dart:core';

class Brain{
  Brain({this.height,this.weight});
  final height;
  final weight;
  double bmi;

  // ignore: non_constant_identifier_names
  String Calculation(){
    bmi = weight /pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(bmi >= 25){
      return 'OverWeight';
    }
    else if(bmi >= 18.5){return 'normal';}
    else {return'undreweight';}
  }
  String comment(){
    if(bmi >= 25){return 'you have higher then a normal weight try to more excises ';}
    else if(bmi>=18.5){return 'You have normal body Weight !good job';}
    else {return'You have lower body weight then normal. You acn eat a bit more!';}
  }
}