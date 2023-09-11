import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();
  int? S = int.tryParse(stdin.readLineSync()!);
  int? h = int.tryParse(stdin.readLineSync()!);
  double a = 0;

  double basis(int S, int h) => 2 * S / h;

  if (range.checkVariableInRange(S!) && range.checkVariableInRange(h!)) {
    a = basis(S, h);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("a = $a");
}
