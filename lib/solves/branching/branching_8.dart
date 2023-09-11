import 'dart:io';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  double? x = double.tryParse(stdin.readLineSync()!);
  double? y = double.tryParse(stdin.readLineSync()!);
  double? z = double.tryParse(stdin.readLineSync()!);

  List<double> interval1_3 = <double>[];
  if (range.checkVariableInRangeABS(x) && range.checkVariableInRangeABS(y) && range.checkVariableInRangeABS(z)) {
    if (x! <= 3 && x >= 1) {
      interval1_3.add(x);
    }
    if (y! <= 3 && y >= 1) {
      interval1_3.add(y);
    }
    if (z! <= 3 && z >= 1) {
      interval1_3.add(z);
    }
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  for (var element in interval1_3) {
    print("$element  ");
  }
}
