import 'dart:io';

import 'package:dart/solves/core/triangular_symptom.dart';

void main() {
  TriangularSymptom triangularSymptom = TriangularSymptom();

  int? a = int.tryParse(stdin.readLineSync()!);
  int? b = int.tryParse(stdin.readLineSync()!);
  int? c = int.tryParse(stdin.readLineSync()!);
  double halfPerimeter = 0;

  double halfPerimeterCalculate(int a, int b, int c) => (a + b + c) / 2;

  if (triangularSymptom.checkForTriangles(a!, b!, c!)) {
    halfPerimeter = halfPerimeterCalculate(a, b, c);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("Half Perimeter = $halfPerimeter");
}
