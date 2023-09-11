import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? x = int.tryParse(stdin.readLineSync()!);
  int V = 0;

  int volume(int x) => x * x * x;

  if (range.checkVariableInRange(x)) {
    V = volume(x!);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("V = $V");
}
