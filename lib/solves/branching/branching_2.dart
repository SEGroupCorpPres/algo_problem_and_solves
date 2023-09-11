import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  double? x = double.tryParse(stdin.readLineSync()!);
  double? y = double.tryParse(stdin.readLineSync()!);
  double? z = double.tryParse(stdin.readLineSync()!);
  double max = 0;
  double min = 0;

  if (range.checkVariableInRange30(x) && range.checkVariableInRange30(y) && range.checkVariableInRange30(z)) {
    max = math.max<double>(x!, math.max(y!, z!));
    min = math.min<double>(x, math.min(y, z));
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("max = $max; min = $min");
}
