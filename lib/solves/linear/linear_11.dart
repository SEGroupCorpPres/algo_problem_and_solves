import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? a = int.tryParse(stdin.readLineSync()!);
  double? x = double.tryParse(stdin.readLineSync()!);
  double? y = double.tryParse(stdin.readLineSync()!);
  double e = math.e;
  double addedNumber1 = 0;
  double addedNumber2 = 0;
  double w2 = 0;

  double calculateAddedNumber1(int a, double x, double y, double e) {
    double b = math.pow(e, x * y).toDouble();
    double c = x * math.sin(a * x);
    double d = x * x + 2;
    double z = x.abs() + 5;
    double w = math.sqrt(b - c - (d / z));
    return w;
  }

  double calculateAddedNumber2(double x) {
    double a = x * x + 2;
    double b = math.sqrt(math.log(a) + 5);
    return b;
  }

  double calculatedExpression(double addedNumber1, double addedNumber2) => addedNumber1 + addedNumber2;

  if (range.checkVariableInRange20(a) && range.checkVariableInRange10(x) && range.checkVariableInRange10(y)) {
    addedNumber1 = calculateAddedNumber1(a!, x!, y!, e);
    addedNumber2 = calculateAddedNumber2(x);
    w2 = calculatedExpression(addedNumber1, addedNumber2);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("W2 = $w2");
}
