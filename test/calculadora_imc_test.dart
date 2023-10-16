import 'package:calculadora_imc/classes/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Calcular IMC de uma pessoa', () {
    expect(Pessoa('Maria', 80, 1.80).calcularIMC().toStringAsFixed(2),
        equals('24.69'));
  });
  test('Dados de uma pessoa', () {
    expect(
        Pessoa('Maria', 80, 1.80).toString(),
        equals(
            "Dados da Pessoa:\n Nome: Maria\n Peso: 80.0 Kg\n Altura: 1.80 m\n IMC: 24.69"));
  });
}
