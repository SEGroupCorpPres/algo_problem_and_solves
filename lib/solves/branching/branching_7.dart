import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? a = int.tryParse(stdin.readLineSync()!);
  int? b = int.tryParse(stdin.readLineSync()!);

  if (range.checkVariableInRangeABS(a) && range.checkVariableInRangeABS(b)) {
    if (a! <= b!) {
      a = 0;
    }
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("a = $a; b = $b");
}
