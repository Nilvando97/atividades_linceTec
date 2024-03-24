import 'dart:math';

void main() {
  // Cria uma instância de Random para gerar números aleatórios
  final random = Random();

  // Cria uma lista com 50 números aleatórios entre 10 e 21
  final lista = List.generate(50, (_) => random.nextInt(12) + 10);

  // Imprime a lista original
  print("Lista original: ${lista.join(' ; ')}");

  // Converte a lista em um conjunto para pegar os itens únicos
  final itensUnicos = lista.toSet();

  // Imprime os itens únicos
  print("Lista original: ${itensUnicos.join(' ; ')}");
}
