import '../lib/week_1/regra_de_tres.dart';
import '../lib/week_1/sequencia_fibonaci.dart';
import '../lib/week_1/validacao_cartao.dart';
import '../lib/week_1/validacao_cpf.dart';
import '../lib/week_3/dot_env.dart';
import '../lib/week_4/algoritimo_lerp.dart';

void main() {
  SequenciaFibonaci().sequenciaDeFibonaci();
  RegraDeTres().regraDeTres(a: 10, b: 50, c: 20);
  ValidacaoCartao().validacaoCartaoDeCredito();
  final valido = ValidacaoCpf().validarCpf('123.139.144-88');
  print(valido ? 'CPF está válido' : 'CPF está inválido');
  // var dotEnv = DotEnv();
  // dotEnv.lerArquivo();
  AlgoritimoLerp().calcularLerp(begin: 20, end: 40, percent:80);
}
