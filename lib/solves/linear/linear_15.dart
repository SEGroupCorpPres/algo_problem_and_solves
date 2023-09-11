import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? x = int.tryParse(stdin.readLineSync()!);
  double? y = double.tryParse(stdin.readLineSync()!);
  double? z = double.tryParse(stdin.readLineSync()!);
  double e = math.e;
  double multipliedNumber1 = 1;
  double multipliedNumber2 = 1;
  double multipliedNumber3 = 1;
  double af = 1;

  double calculateMultipliedNumber1(int x) => math.pow(2, -x).toDouble();

  double calculateMultipliedNumber2(int x, double y) {
    var a = math.pow(y.abs() + 2, 1 / 4);
    var b = math.sqrt(x + a);
    return b;
  }

  double calculateMultipliedNumber3(int x, double z, double e) {
    var a = math.pow(e, x - 1);
    var b = math.sin(z + 2);
    var c = math.pow(a / b + 2, 1 / 3).toDouble();
    return c;
  }

  double calculateExpression(double multipliedNumber1, double multipliedNumber2, double multipliedNumber3) => multipliedNumber1 * multipliedNumber2 * multipliedNumber3;

  if (range.checkVariableInRange30(x) && range.checkVariableInRange10(y) && range.checkVariableInRange10(z)) {
    multipliedNumber1 = calculateMultipliedNumber1(x!);
    multipliedNumber2 = calculateMultipliedNumber2(x, y!);
    multipliedNumber3 = calculateMultipliedNumber3(x, z!, e);
    af = calculateExpression(multipliedNumber1, multipliedNumber2, multipliedNumber3);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("AF = $af");
}
