import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? u = int.tryParse(stdin.readLineSync()!);
  int? r = int.tryParse(stdin.readLineSync()!);
  double i = 0;

  double calculateAmperage(int voltage, int resistance) => voltage / resistance;

  if (range.checkVariableInRange(u) && range.checkVariableInRange(r)) {
    i = calculateAmperage(u!, r!);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("Amperage = $i");
}
