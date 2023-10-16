import 'dart:io';
import "dart:convert";

enum TipoNumero { peso, altura }

void sairDoPrograma() {
  print('Saindo do programa...');
  print('Programa encerrado');
  exit(0);
}

dynamic digitarNumeroNovamente(String medida) {
  dynamic numero;
  print(
      '${medida[0].toUpperCase() + medida.substring(1).toLowerCase()} ${medida == 'peso' ? 'inválido' : 'inválida'}, tente novamente:');
  numero = stdin.readLineSync(encoding: utf8);
  return numero;
}

String inputNome() {
  print('Digite o seu nome ou digite sair para cancelar:');
  dynamic nome = '';
  nome = stdin.readLineSync(encoding: utf8);
  while (nome == '') {
    print('Nome inválido, tente novamente:');
    nome = stdin.readLineSync(encoding: utf8);
  }
  if (nome.toLowerCase() == "sair") {
    sairDoPrograma();
  }
  return nome;
}

double inputNumero(TipoNumero tipo) {
  bool numeroInvalido = true;
  String medida = tipo == TipoNumero.peso ? 'peso' : 'altura';
  print(
      "Digite ${medida == 'peso' ? 'o seu peso (Kg)' : 'a sua altura (m)'} ou digite sair para cancelar:");
  dynamic numero = '';
  numero = stdin.readLineSync(encoding: utf8);

  while (numeroInvalido) {
    if (numero != null) {
      if (numero.toLowerCase() == "sair") {
        sairDoPrograma();
      }
      if (double.tryParse(numero) != null) {
        numeroInvalido = false;
      } else {
        numero = digitarNumeroNovamente(medida);
      }
    } else {
      numero = digitarNumeroNovamente(medida);
    }
  }
  return double.parse(numero);
}
