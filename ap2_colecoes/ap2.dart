import 'dart:math';

void main() {

  // Criando uma instância de Random para gerar números aleatórios
  final random = Random();

  // Gerando uma lista com 50 números aleatórios entre 0 e 14
  final lista = List.generate(50, (_) => random.nextInt(15));

  // Imprimindo a lista original
  print("Lista original: ${lista.join(' ; ')}");

  // Removendo todos os números pares da lista
  lista.removeWhere((numeros) => numeros.isEven);
  
  // Imprimindo a lista atualizada após a remoção dos números pares
  print("Lista atualizada: ${lista.join(' ; ')}");
}
