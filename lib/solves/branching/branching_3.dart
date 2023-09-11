import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? x = int.tryParse(stdin.readLineSync()!);
  int? y = int.tryParse(stdin.readLineSync()!);
  int? z = int.tryParse(stdin.readLineSync()!);
  double max = 0;
  double min = 0;

  if (range.checkVariableInRangeABS(x) && range.checkVariableInRangeABS(y) && range.checkVariableInRangeABS(z)) {
    max = math.max(x! + y! + z!, math.max(x, math.max(y, z))).toDouble();
    min = math.pow(math.min((x + y) / 2, math.min(x, math.min(y, z)).toDouble()), 2).toDouble();
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("max = $max; min = $min");
}
