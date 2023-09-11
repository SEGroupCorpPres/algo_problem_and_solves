import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? r1 = int.tryParse(stdin.readLineSync()!);
  int? r2 = int.tryParse(stdin.readLineSync()!);
  int? r3 = int.tryParse(stdin.readLineSync()!);
  double totalR = 0;

  double calculateTotalResistance(int resistance1, int resistance2, int resistance3) => 1 / (1 / resistance1 + 1 / resistance2 + 1 / resistance3);

  if (range.checkVariableInRange(r1) && range.checkVariableInRange(r2) && range.checkVariableInRange(r3)) {
    totalR = calculateTotalResistance(r1!, r2!, r3!);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("Total Resistance: $totalR");
}
