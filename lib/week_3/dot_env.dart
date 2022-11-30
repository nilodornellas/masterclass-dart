import 'dart:io';

class DotEnv {
  void lerArquivo() {
    final file = File('./assets/example.env');
    final text = file.readAsStringSync();
    final textInLines = text.split('\n');
    final envMap = <String, dynamic>{};
    
    for(var line in textInLines) {
      if(line.isEmpty|| !line.contains('=') || line.startsWith('#')) {
        continue;
      }

      final items = line.split('=');
      var value = items.getRange(1, items.length).join('=');
      value = value.replaceAll('"', '').replaceAll('\'', '').trim();
      value = value.split('#')[0].trim();
      envMap[items[0]] = num.tryParse(value) ?? _isBool(value) ?? value;

    }
  }

  static bool? _isBool(String value) {
    if (value == "true") {
      return true;
    } else if (value == "false") {
      return false;
    }

    return null;
  }
}
