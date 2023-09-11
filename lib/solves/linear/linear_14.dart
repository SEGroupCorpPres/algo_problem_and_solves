import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? a = int.tryParse(stdin.readLineSync()!);
  double? x = double.tryParse(stdin.readLineSync()!);
  double? y = double.tryParse(stdin.readLineSync()!);
  double e = math.e;
  double addedNumber1 = 0;
  double addedNumber2 = 0;
  double addedNumber3 = 0;
  double addedNumber4 = 0;
  double tt = 0;

  double calculateAddedNumber1(int a, double x, double e) {
    var b = math.pow(e, x);
    var c = a / (x * x + 2);
    var d = math.sqrt(b + c);
    return d;
  }

  double calculateAddedNumber2(double x) {
    var a = math.pow(math.cos(x), 2);
    var b = math.sin(x * x);
    var d = a / b;
    return d;
  }

  double calculateAddedNumber3(double x, double y, double e) {
    var a = math.pow(e, x);
    var b = y * y + a;
    return b;
  }

  double calculateAddedNumber4(double x) => math.pow(math.cos(x), 3).toDouble();

  double calculateExpression(double addedNumber1, double addedNumber2, double addedNumber3, double addedNumber4) {
    var a = math.sqrt(addedNumber3 + addedNumber1 + addedNumber2);
    var b = a + addedNumber4;
    return b;
  }

  if (range.checkVariableInRange30(a) && range.checkVariableInRange10(x) && range.checkVariableInRange10(y)) {
    addedNumber1 = calculateAddedNumber1(a!, x!, e);
    addedNumber2 = calculateAddedNumber2(x);
    addedNumber3 = calculateAddedNumber3(x, y!, e);
    addedNumber4 = calculateAddedNumber4(x);
    tt = calculateExpression(addedNumber1, addedNumber2, addedNumber3, addedNumber4);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("TT = $tt");
}
