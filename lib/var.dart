import 'package:math_expressions/math_expressions.dart';
import 'dart:math';

var equation = '';
var result = '';

void Calculations () {
  String FinalQuarry = equation;
  Parser p = Parser();
  Expression exp = p.parse(FinalQuarry);
  ContextModel cm = ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL, cm);
  result = eval.toString();
}

