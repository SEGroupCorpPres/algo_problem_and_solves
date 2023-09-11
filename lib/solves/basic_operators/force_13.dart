import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? m = int.tryParse(stdin.readLineSync()!);
  int? a = int.tryParse(stdin.readLineSync()!);
  int F = 0;

  int calculateForce(int mass, int acceleration) => mass * acceleration;

  if (range.checkVariableInRange(m) && range.checkVariableInRange(a)) {
    F = calculateForce(m!, a!);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("Force = $F");
}
