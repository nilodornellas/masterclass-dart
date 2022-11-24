import 'dart:io';

class DotEnv {
  void lerArquivo() {
    final file = File('./assets/example.env');
    final conteudo = file.readAsStringSync();
    print('');
  }
}
