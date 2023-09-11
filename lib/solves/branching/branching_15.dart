import 'dart:io';
import 'dart:math';

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? a = int.tryParse(stdin.readLineSync()!);
  int? b = int.tryParse(stdin.readLineSync()!);
  int? c = int.tryParse(stdin.readLineSync()!);

  double x1 = 0;
  double x2 = 0;

  bool result(int a, int b, int c) {
    var D = b * b - 4 * a * c;
    if (D < 0) {
      return false;
    } else if (D > 0) {
      x1 = ((-1 * b) + sqrt(D)) / (2 * a);
      x2 = ((-1 * b) - sqrt(D)) / (2 * a);
      return true;
    } else {
      x1 = -1 * b / (2 * a);
      x2 = x1;
      return true;
    }
  }

  if (range.checkVariableInRangeABS(a) && range.checkVariableInRangeABS(b) && range.checkVariableInRangeABS(c)) {
    if (result(a!, b!, c!)) {
      print("x1 = $x1, x2 = $x2");
    } else {
      print("No");
    }
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
}
