import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? a = int.tryParse(stdin.readLineSync()!);
  double? x = double.tryParse(stdin.readLineSync()!);
  double addedNumber1 = 0;
  double dsn = 0;
  double dsr = 0;
  double addedNumber2 = 0;
  double bb1 = 0;

  double calculatedAddedNumber1(double x) {
    var a = x / 2 + x / 3 + x / 4;
    var b = x * math.sin(a);
    return b;
  }

  double calculatedDivision(int a, double x) {
    var b = math.log(x * x - 2) / math.log(10);
    var c = b + math.pow(3, a);
    return c;
  }

  double calculatedDivisor(double x) {
    var a = math.cos(x + 3);
    var b = math.sin(x + 3);
    var c = a * b + 8;
    return c;
  }

  double calculatedAddedNumber2(double dsn, double dsr) => dsn / dsr;

  double calculateExpression(double addedNumber1, double addedNumber2) => addedNumber1 + addedNumber2;

  if (range.checkVariableInRange30(a) && range.checkVariableInRange10(x)) {
    addedNumber1 = calculatedAddedNumber1(x!);
    dsn = calculatedDivision(a!, x);
    dsr = calculatedDivisor(x);
    addedNumber2 = calculatedAddedNumber2(dsn, dsr);
    bb1 = calculateExpression(addedNumber1, addedNumber2);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("BB1 = $bb1");
}
