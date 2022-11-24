import 'package:dart_playground/week_1/regra_de_tres.dart';
import 'package:dart_playground/week_1/sequencia_fibonaci.dart';
import 'package:dart_playground/week_1/validacao_cartao.dart';
import 'package:dart_playground/week_1/validacao_cpf.dart';
import 'package:dart_playground/week_3/dot_env.dart';

void main() {
  SequenciaFibonaci().sequenciaDeFibonaci();
  RegraDeTres().regraDeTres(a: 10, b: 50, c: 20);
  ValidacaoCartao().validacaoCartaoDeCredito();
  final valido = ValidacaoCpf().validarCpf('123.139.144-88');
  print(valido ? 'CPF está válido' : 'CPF está inválido');
  var dotEnv = DotEnv();
  dotEnv.lerArquivo();
}
