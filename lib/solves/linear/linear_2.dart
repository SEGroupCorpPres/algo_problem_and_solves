import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();
  double? x = double.tryParse(stdin.readLineSync()!);
  double? y = double.tryParse(stdin.readLineSync()!);
  double pi = math.pi;
  double dsn = 0;
  double dsr = 0;
  double addedNumber = 0;
  double f1 = 0;

  double calculateDivision(double x, double y, double pi) => 2 * math.tan(x + pi / 6);
  double calculateDivisor(double x, double y) => 1 / 3 + math.pow(math.cos(y + x * x), 2);
  double calculateAddedNumber(double x) => (math.log(x * x + 2)) / (math.log(2));
  double calculateExpression(double dsn, double dsr, double addedNumber) => dsn / dsr + addedNumber;

  if (range.checkVariableInRange10(x) && range.checkVariableInRange10(y)) {
    dsn = calculateDivision(x!, y!, pi);
    dsr = calculateDivisor(x, y);
    addedNumber = calculateAddedNumber(x);
    f1 = calculateExpression(dsn, dsr, addedNumber);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("f1 = $f1");
}
