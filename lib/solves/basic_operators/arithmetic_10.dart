import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? year = int.tryParse(stdin.readLineSync()!);
  int time = 1;
  int milliliter = 1;
  double liter = 0;

  int calculateYearToSecond(int year) => year * 365 * 24 * 3600;

  double calculateLiterToYear(int year, ml) => year * ml / 1000;

  if (range.checkVariableInRange(year)) {
    year = calculateYearToSecond(year!);
    liter = calculateLiterToYear(year, milliliter);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("liter = $liter");
}
