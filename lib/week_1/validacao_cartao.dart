class ValidacaoCartao {
  void validacaoCartaoDeCredito({String numeroCartao = '4916641859369080'}) {
    final cardList = numeroCartao.split('').map((e) => int.parse(e)).toList();
    final endNumber = cardList.last;
    var soma = 0;

    for (var i = 0; i < cardList.length; i++) {
      int n = cardList[i];

      if (i % 2 == 0) {
        if ((n * 2) > 9) {
          soma += ((n * 2) - 9);
        } else {
          soma += ((n * 2));
        }
      } else {
        soma += (n * 1);
      }
    }

    soma = (soma % 10);
    print(soma == endNumber ? 'Cartão válido' : 'Cartão inválido');
  }
}
