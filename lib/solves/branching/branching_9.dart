import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  num? x = int.tryParse(stdin.readLineSync()!);
  num? y = int.tryParse(stdin.readLineSync()!);
  double max = 0;
  double min = 0;

  if (range.checkVariableInRangeABS(x) && range.checkVariableInRangeABS(y)) {
    if (x! > y!) {
      min = x / 2 + y / 2;
      max = 2 * x * 2 * y.toDouble();
      x = max;
      y = min;
    } else if (y > x) {
      min = x / 2 + y / 2;
      max = 2 * x * 2 * y.toDouble();
      y = max;
      x = min;
    }
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("x = $x; y = $y");
}
