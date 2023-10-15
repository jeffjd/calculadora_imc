import "package:calculadora_imc/components/input_validations.dart";
import 'package:calculadora_imc/classes/Pessoa.dart';

void main(List<String> arguments) {
  print('Iniciando a calculadora IMC...');
  var nome = inputNome();
  var peso = inputNumero(TipoNumero.peso);
  var altura = inputNumero(TipoNumero.altura);

  var pessoa = Pessoa(nome, peso, altura);
  print(pessoa);

}
