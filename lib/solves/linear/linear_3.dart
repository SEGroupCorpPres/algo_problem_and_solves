import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  double? x = double.tryParse(stdin.readLineSync()!);
  double? y = double.tryParse(stdin.readLineSync()!);
  double e = math.e;
  double dsn = 0;
  double dsr = 0;
  double subtractedNumber = 0;
  double f2 = 0;

  double calculateDivision(double x, double e) => (1 / (x + 2 / (x * x) + 3 / (x * x * x))) + math.pow(e, (x * x + 3 * x));
  double calculateDivisor(double x, double y) => math.atan(x + y) + math.pow((5 + x).abs(), 2);
  double calculateSubtractedNumber(double x, double y) => math.pow(math.cos(y * y + (x * x) / 2), 2).toDouble();
  double calculatedExpression(double dsn, double dsr, double subtractedNumber) => (dsn / dsr) - subtractedNumber;

  if (range.checkVariableInRange10(x) && range.checkVariableInRange10(y)) {
    dsn = calculateDivision(x!, e);
    dsr = calculateDivisor(x, y!);
    subtractedNumber = calculateSubtractedNumber(x, y);
    f2 = calculatedExpression(dsn, dsr, subtractedNumber);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("f2 = $f2");
}
