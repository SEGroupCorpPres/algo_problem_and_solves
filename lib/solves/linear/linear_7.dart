import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  double? x1 = double.tryParse(stdin.readLineSync()!);
  double? x2 = double.tryParse(stdin.readLineSync()!);
  int? c = int.tryParse(stdin.readLineSync()!);
  int? d = int.tryParse(stdin.readLineSync()!);
  double dsn = 0;
  double dsr = 0;
  double addedNumber = 0;
  double f = 0;

  double calculatedDivision(double x1, double x2, int c, int d) {
    double a = c * x2 * x2 * x2;
    double b = d * x1 * x1 * x1;
    int y = c * d;
    double z = math.pow(math.sin((a + b - y).abs()), 2).toDouble();
    return z;
  }

  double calculatedDivisor(double x1, double x2, int c, int d) {
    double a = c * x1 * x1;
    double b = d * x2 * x2;
    double y = math.sqrt(a + b + 5 + 2);
    return y;
  }

  double calculatedAddedNumber(double x1, double x2, int d) {
    double a = x1 * x2 * x2;
    int b = d * d * d;
    double c = math.tan(a + b);
    return c;
  }

  double calculatedExpression(double dsn, double dsr, double addedNumber) => (dsn / dsr).abs() + addedNumber;

  if (range.checkVariableInRange10(x1) && range.checkVariableInRange10(x2) && range.checkVariableInRange20(c) && range.checkVariableInRange20(d)) {
    dsn = calculatedDivision(x1!, x2!, c!, d!);
    dsr = calculatedDivisor(x1, x2, c, d);
    addedNumber = calculatedAddedNumber(x1, x2, d);
    f = calculatedExpression(dsn, dsr, addedNumber);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("F = $f");
}
