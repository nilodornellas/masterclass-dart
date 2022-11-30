
class AlgoritimoLerp {
  void calcularLerp({required double begin, required double end, required double percent }) {
    final double resultBegin = begin - (percent / 100 * begin);
    final double resultEnd = percent / 100 * end;
    final double result = resultBegin + resultEnd;
    print("O resultado de LERP é: $result");
  }
}