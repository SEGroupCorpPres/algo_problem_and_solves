import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? v = int.tryParse(stdin.readLineSync()!);
  int? S = int.tryParse(stdin.readLineSync()!);
  double t = 0;

  double calculateTime(int space, int velocity) => space / velocity;

  if (range.checkVariableInRange(S) && range.checkVariableInRange(v)) {
    t = calculateTime(S!, v!);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("time = $t");
}
