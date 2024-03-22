import 'dart:math';

void main() {
  // Criando um objeto da classe Random para gerar números aleatórios
  final random = Random();

  // Criando uma lista com 10 elementos, cada um sendo um número aleatório entre 0 e 100
  final lista = List.generate(10, (index) => random.nextInt(101));

  // Iterando sobre cada elemento da lista e imprimindo a posição e o valor do elemento
  for (var i = 0; i < lista.length; i++) {
    print('Posição: $i, valor: ${lista[i]}');
  }
}
