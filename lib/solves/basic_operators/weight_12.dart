import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? m = int.tryParse(stdin.readLineSync()!);
  double g = 9.8;
  double P = 0;

  double calculateWeight(int mass, double gravity) => mass * gravity;
  if (range.checkVariableInRange(m)) {
    P = calculateWeight(m!, g);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("Weight = $P");
}
