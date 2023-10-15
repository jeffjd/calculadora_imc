class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double calcularIMC() {
    return (_peso / (_altura * 2));
  }

  @override
  String toString() {
    return "Dados da Pessoa:\n Nome: $_nome\n Peso: $_peso Kg\n Altura: $_altura m\n IMC: ${calcularIMC().toStringAsFixed(2)}";
  }
}
