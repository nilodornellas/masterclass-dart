class ValidacaoCpf {
  bool validarCpf(String cpf) {
    var cpfTratado = cpf.replaceAll('-', '');
    cpfTratado = cpfTratado.replaceAll('.', '');
    var listCpf = cpfTratado.split('').map((e) => int.parse(e)).toList();
    var digitosVerificadores = [listCpf.last, listCpf[listCpf.length - 2]];

    listCpf.removeLast();
    listCpf.removeLast();
    listCpf = listCpf.reversed.toList();

    var primeiroDigito = calculoPrimeiroDigito(listCpf);
    listCpf.add(primeiroDigito);
    var segundoDigito = calculoSegundoDigito(listCpf);

    return (primeiroDigito == digitosVerificadores[0] &&
        primeiroDigito == digitosVerificadores[1]);
  }

  int calculoPrimeiroDigito(List<int> listaCpf) {
    var contador = 2;
    var listaSomaDoCpf = [];
    var soma = 0;
    var resultado = 0;

    for (var i = 0; i < listaCpf.length; i++) {
      var result = listaCpf[i] * contador;
      listaSomaDoCpf.add(result);
      contador += 1;
    }
    for (int element in listaSomaDoCpf) {
      soma += element;
    }

    resultado = soma % 11;

    if (resultado >= 2) {
      return 11 - resultado;
    }
    return 0;
  }

  int calculoSegundoDigito(List<int> listaCpf) {
    var contador = 2;
    var listaSomaDoCpf = [];
    var soma = 0;
    var resultado = 0;

    for (var i = 0; i < listaCpf.length; i++) {
      var result = listaCpf[i] * contador;
      listaSomaDoCpf.add(result);
      contador += 1;
    }
    for (int element in listaSomaDoCpf) {
      soma += element;
    }

    resultado = soma % 11;

    if (resultado >= 2) {
      return 11 - resultado;
    }
    return 0;
  }
}
