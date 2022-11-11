class SequenciaFibonaci {
  void sequenciaDeFibonaci() {
    final listaFibonaci = <int>[1];

    for (var i = 0; i < 15; i++) {
      int soma = 0;
      if (listaFibonaci.length > 1) {
        soma = listaFibonaci[i - 1] + listaFibonaci.last;
      } else {
        soma = listaFibonaci[i] * 2;
      }
      listaFibonaci.add(soma);
    }
    print(listaFibonaci);
  }
}
