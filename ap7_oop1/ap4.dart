import 'dart:math';

class Pessoa {
  String _nome;
  int _idade;
  double _altura;

  Pessoa(this._nome, this._idade, this._altura);

  // Setter para a idade que valida se é maior ou igual a zero
  set idade(int idade) {
    if (idade >= 0) {
      _idade = idade;
    }
  }

  // Getter para a idade
  int get idade => _idade;

  // Getter para o nome
  String get nome => _nome;

  // Getter para a altura
  double get altura => _altura;
}

void main() {
  var random = Random();
  var nome = 'João'; // Pode ter qualquer nome
  var idade = random.nextInt(100) + 1; // Idade aleatória entre 1 e 100
  var altura = 1.0 +
      random.nextDouble() * (2.3 - 1.0); // Altura aleatória entre 1.0 e 2.3

  var pessoa = Pessoa(nome, idade, altura);
  print('Nome: ${pessoa.nome}');
  print('Idade: ${pessoa.idade}');
  print('Altura: ${pessoa.altura.toStringAsFixed(2)}');
}
