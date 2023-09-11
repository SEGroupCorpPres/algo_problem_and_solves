import 'package:dart/solves/core/check_variable_in_range.dart';

class TriangularSymptom {
  Range range = Range();

  bool checkForTriangles(int a, int b, int c) {
    if (range.checkVariableInRange(a) && range.checkVariableInRange(b) && range.checkVariableInRange(c)) {
      if (a + b > c && a + c > b && b + c < c) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
