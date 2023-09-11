import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  double? x = double.tryParse(stdin.readLineSync()!);
  double? y = double.tryParse(stdin.readLineSync()!);
  double addedNumber1 = 0;
  double addedNumber2 = 0;
  double t11 = 0;

  double calculatedAddedNumber1(double x, double y) {
    double a = x * x + 1;
    double b = (x + y).abs() + 5;
    double c = y * y + (y + x * y) / b;
    double d = x * x + (x * y + y * y) / c;
    double e = a / d;
    return e;
  }

  double calculatedAddedNumber2(double x) => 1 / (1 + math.cos(x) + 1 / math.sin(x.abs()));

  double calculatedExpression(double addedNumber1, double addedNumber2) => addedNumber1 + addedNumber2;

  if (range.checkVariableInRange10(x) && range.checkVariableInRange10(y)) {
    addedNumber1 = calculatedAddedNumber1(x!, y!);
    addedNumber2 = calculatedAddedNumber2(x);
    t11 = calculatedExpression(addedNumber1, addedNumber2);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("T11 = $t11");
}
