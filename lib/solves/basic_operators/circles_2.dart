import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? r1 = int.tryParse(stdin.readLineSync()!);
  int? r2 = int.tryParse(stdin.readLineSync()!);
  int? r3 = int.tryParse(stdin.readLineSync()!);
  double S1 = 0;
  double S2 = 0;
  double S3 = 0;

  double surface(int r) => math.pi * r * r;

  if (range.checkVariableInRange(r1) || range.checkVariableInRange(r2) || range.checkVariableInRange(r3)) {
    S1 = surface(r1!);
    S2 = surface(r2!);
    S3 = surface(r3!);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("S1 = $S1");
  print("S2 = $S2");
  print("S3 = $S3");
}
