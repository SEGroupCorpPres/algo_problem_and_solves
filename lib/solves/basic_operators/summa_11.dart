import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? n = int.tryParse(stdin.readLineSync()!);
  int summa = 0;

  int calculateSumma(int n) => n * (n + 1) ~/ 2;

  if (range.checkVariableInRange(n)) {
    summa = calculateSumma(n!);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("Summa = $summa");
}
