import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  double? a = double.tryParse(stdin.readLineSync()!);
  double? b = double.tryParse(stdin.readLineSync()!);
  double addedNumber = 0;
  double multipliedNumber = 0;
  double t = 0;

  double calculatedAddedNumber(double a, double b) {
    double x = a + b;
    double y = 2 * b + a * b;
    double z = b * x / y;
    double e = math.pow(z, 1 / 4).toDouble();
    return e;
  }

  double calculatedMultipliedNumber(double a, double b) => a * a + b * b + 2;

  double calculatedExpression(double addedNumber, double multipliedNumber, double a) => math.pow(a, 1 / 5) + addedNumber * multipliedNumber;

  if (range.checkVariableInRange10(a) && range.checkVariableInRange10(b)) {
    addedNumber = calculatedAddedNumber(a!, b!);
    multipliedNumber = calculatedMultipliedNumber(a, b);
    t = calculatedExpression(addedNumber, multipliedNumber, a);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("T = $t");
}
