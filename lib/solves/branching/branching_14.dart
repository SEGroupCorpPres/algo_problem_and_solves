import 'dart:io';

import 'package:dart/solves/core/triangular_symptom.dart';

void main() {
  TriangularSymptom triangularSymptom = TriangularSymptom();
  int? x = int.tryParse(stdin.readLineSync()!);
  int? y = int.tryParse(stdin.readLineSync()!);
  int? z = int.tryParse(stdin.readLineSync()!);

  if (triangularSymptom.checkForTriangles(x!, y!, z!)) {
    print("Yes");
  } else {
    print("No");
  }
}
