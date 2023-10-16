import "package:calculadora_imc/components/input_validations.dart";
import 'package:calculadora_imc/classes/Pessoa.dart';

void main(List<String> arguments) {
  print('Iniciando a calculadora IMC...');
  print('');

  var nome = inputNome();
  var peso = inputNumero(TipoNumero.peso);
  var altura = inputNumero(TipoNumero.altura);
  print('');

  var pessoa = Pessoa(nome, peso, altura);
  print(pessoa);
  print('');

  print('Encerrando programa...');
  print('Programa encerrado');
}
