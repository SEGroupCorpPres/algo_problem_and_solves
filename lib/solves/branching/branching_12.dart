import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  double? a = double.tryParse(stdin.readLineSync()!);
  double? b = double.tryParse(stdin.readLineSync()!);
  double? c = double.tryParse(stdin.readLineSync()!);
  double? d = double.tryParse(stdin.readLineSync()!);
  double max = 0;
  double min = 0;

  if (range.checkVariableInRangeABS(a) && range.checkVariableInRangeABS(b) && range.checkVariableInRangeABS(c)) {
    if (a! <= b! && b <= c! && c <= d!) {
      max = math.max(a, math.max(b, math.max(c, d)));
      a = max;
      b = max;
      c = max;
      d = max;
    } else {
      min = math.min(a, math.min(b, math.min(c!, d!)));
      a = min;
      b = min;
      c = min;
      d = min;
    }
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("a = $a; b = $b; c = $c; d = $d");
}
