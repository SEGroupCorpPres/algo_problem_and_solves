import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  double? x = double.tryParse(stdin.readLineSync()!);
  double? y = double.tryParse(stdin.readLineSync()!);
  double? z = double.tryParse(stdin.readLineSync()!);

  if (range.checkVariableInRangeABS(x) && range.checkVariableInRangeABS(y) && range.checkVariableInRangeABS(z)) {
    if (range.checkVariableInRange1(x) && range.checkVariableInRange1(y) && range.checkVariableInRange1(z)) {
      if (x! < y! && x < z!) {
        x = y / 2 + z / 2;
      } else if (y < x && y < z!) {
        y = x / 2 + z / 2;
      } else {
        z = x / 2 + y / 2;
      }
    }
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("x = $x, y = $y, z = $z");
}
