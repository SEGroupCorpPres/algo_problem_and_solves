import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? a = int.tryParse(stdin.readLineSync()!);
  double? x = double.tryParse(stdin.readLineSync()!);
  double dsn = 0;
  double dsr = 0;
  double tt = 0;

  double calculatedDivision(int a, double x) {
    double b = math.sqrt(x - 1);
    double c = math.sqrt(x + 2);
    double d = math.log(math.sqrt(a * x * x) + 2)/ math.log(10);
    double e = b + c + d;
    return e;
  }

  double calculatedDivisor(double x) {
    double a = math.sqrt(x + 2);
    double b = math.sqrt(x + 24);
    double c = math.pow(x, 5).toDouble();
    double d = math.sqrt(a + b + c);
    return d;
  }

  double calculatedExpression(double dsn, double dsr) => dsn / dsr;

  if (range.checkVariableInRange30(a) && range.checkVariableInRange10(x)) {
    dsn = calculatedDivision(a!, x!);
    dsr = calculatedDivisor(x);
    tt = calculatedExpression(dsn, dsr);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("TT = $tt");
}
