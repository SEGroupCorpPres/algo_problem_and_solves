import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? x = int.tryParse(stdin.readLineSync()!);
  int? y = int.tryParse(stdin.readLineSync()!);
  double e = math.e;
  double logE = 0;
  double addedNumber = 0;
  double z = 0;

  double calculateLog(int x, int y, double e) {
    int a = math.pow(x + y, 2).toInt();
    double b = math.sqrt(y.abs() + 2);
    double c = x - (x * y) / (x * x / 2 - 5);
    double logE = math.log((a + b - c).abs());
    return logE;
  }

  double calculateAddedNumber(int x, int y) => math.pow(math.cos(x + y), 2) / math.pow(x + y, 1 / 3);

  double calculatedExpression(double logE, double addedNumber) => logE + addedNumber;

  if (range.checkVariableInRange30(x) && range.checkVariableInRange30(y)) {
    logE = calculateLog(x!, y!, e);
    addedNumber = calculateAddedNumber(x, y);
    z = calculatedExpression(logE, addedNumber);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("z = $z");
}
