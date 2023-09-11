import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? r = int.tryParse(stdin.readLineSync()!);
  double S = 0;

  double surface(int r) => 4 * math.pi * r * r;

  if (range.checkVariableInRange(r)) {
    S = surface(r!);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("S = $S");
}
