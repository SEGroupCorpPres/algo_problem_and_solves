import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? a = int.tryParse(stdin.readLineSync()!);
  int? b = int.tryParse(stdin.readLineSync()!);
  int? c = int.tryParse(stdin.readLineSync()!);
  double? x = double.tryParse(stdin.readLineSync()!);
  double dsn = 0;
  double dsr = 0;
  double w1 = 0;

  double calculatedDivision(double x) {
    double a = 8.2 * x * x;
    double b = x * x * x + 3 * x;
    double c = math.cos(x - 2);
    double d = a + math.sqrt(b.abs() + c);
    return d;
  }

  double calculatedDivisor(int a, int b, int c) => a / 4 + b / 3 + c / 2 + 1;
  double calculatedExpression(double dsn, double dsr) => 0.75 + dsn / dsr;

  if (range.checkVariableInRange20(a) && range.checkVariableInRange20(b) && range.checkVariableInRange20(c) && range.checkVariableInRange10(x)) {
    dsn = calculatedDivision(x!);
    dsr = calculatedDivisor(a!, b!, c!);
    w1 = calculatedExpression(dsn, dsr);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("W1 = $w1");
}
