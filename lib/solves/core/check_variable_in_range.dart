class Range {
  bool checkVariableInRange(dynamic x) {
    if (x != null) {
      if (x <= 100 && x >= 1) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }

  bool checkVariableInRange1(dynamic x) {
    if (x != null) {
      if (x <= 1) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }

  bool checkVariableInRange10(dynamic x) {
    if (x != null) {
      if (x <= 10 && x >= 0) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }

  bool checkVariableInRange20(dynamic x) {
    if (x != null) {
      if (x <= 20 && x >= 0) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }

  bool checkVariableInRange30(dynamic x) {
    if (x != null) {
      if (x <= 30 && x >= 0) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }

  bool checkVariableInRange100100(dynamic x) {
    if (x != null) {
      if (x <= 100 && x >= -100) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }

  bool checkVariableInRangeABS(dynamic x) {
    if (x != null) {
      x = x.abs();
      if (x <= 100 && x >= 0) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }
}
