import 'dart:io';
import 'dart:math' as math;

import 'package:dart/solves/core/check_variable_in_range.dart';

void main() {
  Range range = Range();

  int? a = int.tryParse(stdin.readLineSync()!);
  int? b = int.tryParse(stdin.readLineSync()!);
  int? h = int.tryParse(stdin.readLineSync()!);
  double sideLength = 0;
  double baseArea = 0;
  double lateralSurface = 0;
  double frustumArea = 0;

  double calculateSideLength(int base1, int base2, int height) => math.sqrt(math.pow((base1 / 2 - base2 / 2), 2) + math.pow((height), 2));

  double calculateBaseArea(int base) => math.pi * math.pow(base / 2, 2);

  double calculateLateralSurface(int base1, int base2, double length) => math.pi * sideLength * (a! / 2 + b! / 2);

  double calculateFrustumArea(double baseAreaF, double lateralSurfaceF) => baseAreaF + lateralSurfaceF;

  if (range.checkVariableInRange(a) && range.checkVariableInRange(b) && range.checkVariableInRange(h)) {
    sideLength = calculateSideLength(a!, b!, h!);
    baseArea = calculateBaseArea(a) + calculateBaseArea(b);
    lateralSurface = calculateLateralSurface(a, b, sideLength);
    frustumArea = calculateFrustumArea(baseArea, lateralSurface);
  } else {
    print("Incorrect number entered! The entered number is beyond the specified range");
  }
  print("Frustum Area = $frustumArea");
}
