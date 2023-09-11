import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  double? x = double.tryParse(stdin.readLineSync()!);
  double? y = double.tryParse(stdin.readLineSync()!);

  if (range.checkVariableInRangeABS(x) && range.checkVariableInRangeABS(y)) {
    if (x! < 0 && y! < 0) {
      x = x.abs();
      y = y.abs();
    } else if (x < 0 || y! < 0) {
      x += 0.5;
      y = y! + 0.5;
    }
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("x = $x, y = $y");
}
