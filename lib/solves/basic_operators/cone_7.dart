import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? h = int.tryParse(stdin.readLineSync()!);
  int? r = int.tryParse(stdin.readLineSync()!);
  double V = 0;

  double calculateVolume(int height, int radius) => 1 / 3 * math.pi * radius * radius * height;

  if (range.checkVariableInRange(r) && range.checkVariableInRange(h)) {
    V = calculateVolume(h!, r!);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("Cone volume = $V");
}
