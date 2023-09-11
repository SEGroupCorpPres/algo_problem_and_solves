import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? a = int.tryParse(stdin.readLineSync()!);
  int? b = int.tryParse(stdin.readLineSync()!);
  int? c = int.tryParse(stdin.readLineSync()!);

  if (range.checkVariableInRangeABS(a) && range.checkVariableInRangeABS(b) && range.checkVariableInRangeABS(c)) {
    if (a! >= b! && b >= c!) {
      a = 2 * a;
      b = 2 * b;
      c = 2 * c;
    } else {
      a = a.abs();
      b = b.abs();
      c = c!.abs();
    }
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("a = $a; b = $b; c = $c");
}
