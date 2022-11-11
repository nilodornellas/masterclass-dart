class RegraDeTres {
  void regraDeTres({double a = 0, double b = 0, double c = 0, double d = 0}) {
    if (d == 0) {
      d = (c * b) / a;
      print('resultado: $d');
    } else if (c == 0) {
      c = (d * a) / b;
      print('resultado: $c');
    } else if (b == 0) {
      b = (a * c) / d;
      print('resultado: $b');
    } else {
      a = (c * b) / d;
      print('resultado: $a');
    }
  }
}
