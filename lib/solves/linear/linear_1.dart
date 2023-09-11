import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();
  double? x = double.tryParse(stdin.readLineSync()!);
  double? y = double.tryParse(stdin.readLineSync()!);
  double e = math.e;
  double c1 = 0;

  double calculateExpression(double x, double y, double e) => (x + y) / (y * y + ((y * y + 2) / (x + x * x * x / 5).abs())) + math.pow(e, y + 2);

  if (range.checkVariableInRange10(x) && range.checkVariableInRange10(y)) {
    c1 = calculateExpression(x!, y!, e);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("c1 = $c1");
}
