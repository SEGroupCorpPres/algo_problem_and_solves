import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  double? x = double.tryParse(stdin.readLineSync()!);
  double addedNumber1 = 0;
  double addedNumber2 = 0;
  double aa = 0;

  double calculatedAddedNumber1(double x) {
    double a = 2 * math.tan(x + 2);
    double b = math.cos(x + math.pow(2, x));
    double c = 1 + math.pow(math.cos(x + 2), 2).toDouble();
    double d = math.sqrt((a - b) / c);
    return d;
  }

  double calculatedAddedNumber2(double x) => math.sin(x * x) / (x * x + 3);
  double calculatedExpression(double addedNumber1, double addedNumber2) => addedNumber1 + addedNumber2;

  if (range.checkVariableInRange10(x)) {
    addedNumber1 = calculatedAddedNumber1(x!);
    addedNumber2 = calculatedAddedNumber2(x);
    aa = calculatedExpression(addedNumber1, addedNumber2);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("AA = $aa");
}
