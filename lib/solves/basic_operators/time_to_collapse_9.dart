import 'dart:io';
import 'dart:math';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? h = int.tryParse(stdin.readLineSync()!);
  double g = 9.8;
  double t = 0;

  double calculatedCollapsedTime(int height, double gravity) => sqrt(2 * height / gravity);

  if (range.checkVariableInRange(h)) {
    t = calculatedCollapsedTime(h!, g);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("time to collapse = $t");
}
