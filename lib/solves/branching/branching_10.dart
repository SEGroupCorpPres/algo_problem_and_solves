import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? x = int.tryParse(stdin.readLineSync()!);
  int? y = int.tryParse(stdin.readLineSync()!);
  int? z = int.tryParse(stdin.readLineSync()!);
  List<double> interval1_3 = <double>[];

  if (range.checkVariableInRangeABS(x) && range.checkVariableInRangeABS(y) && range.checkVariableInRangeABS(z)) {
    if (x! >= 0) {
      x = x * x;
    }
    if (y! >= 0) {
      y = y * y;
    }
    if (z! >= 0) {
      z = z * z;
    }
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("x = $x; y = $y; z = $z");
}
