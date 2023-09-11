import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? a = int.tryParse(stdin.readLineSync()!);
  int? b = int.tryParse(stdin.readLineSync()!);
  int? c = int.tryParse(stdin.readLineSync()!);
  int? d = int.tryParse(stdin.readLineSync()!);
  double? x = double.tryParse(stdin.readLineSync()!);
  double dsn1 = 0;
  double dsn2 = 0;
  double dsr1 = 0;
  double dsr2 = 0;
  double addedNumber1 = 0;
  double addedNumber2 = 0;
  double y2 = 0;

  double calculatedDivision1(int a, int b, int c, double x) => a * x * x + b * x + c;
  double calculatedDivision2(int a, int b, double x) => a * x + b;
  double calculatedDivisor1(int a, int b, int c, double x) => a * a * a * x + a * a + math.pow(a, b - c);
  double calculatedDivisor2(int a, int c, int d, double x) => c * x + d + math.pow(a, c);
  double calculatedAddedNumber(double dsn1, double dsr1) => dsn1 / dsr1;
  double calculatedAddedNumber2(double dsn2, double dsr2) => math.cos((dsn2 / dsr2).abs());
  double calculatedExpression(double addedNumber1, double addedNumber2) => addedNumber1 + addedNumber2;

  if (range.checkVariableInRange20(a) && range.checkVariableInRange20(b) && range.checkVariableInRange20(c) && range.checkVariableInRange20(d) && range.checkVariableInRange10(x)) {
    dsn1 = calculatedDivision1(a!, b!, c!, x!);
    dsn2 = calculatedDivision2(a, b, x);
    dsr1 = calculatedDivisor1(a, b, c, x);
    dsr2 = calculatedDivisor2(a, c, d!, x);
    addedNumber1 = calculatedAddedNumber(dsn1, dsr1);
    addedNumber2 = calculatedAddedNumber2(dsn2, dsr2);
    y2 = calculatedExpression(addedNumber1, addedNumber2);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("y2 = $y2");
}
