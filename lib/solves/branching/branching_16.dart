import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  double? a = double.tryParse(stdin.readLineSync()!);

  if (range.checkVariableInRangeABS(a) && range.checkVariableInRangeABS(b) && range.checkVariableInRangeABS(c)) {
    if (a! < b! && b < c!) {
      print("Yes");
    } else {
      print("No");
    }
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
}
