import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  double? x = double.tryParse(stdin.readLineSync()!);
  double? y = double.tryParse(stdin.readLineSync()!);
  double max = 0;
  double min = 0;

  if (range.checkVariableInRange30(x) && range.checkVariableInRange30(y)) {
    max = math.max<double>(x!, y!);
    min = math.min<double>(x, y);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("max = $max; min = $min");
}
