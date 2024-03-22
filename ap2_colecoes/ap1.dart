// import 'dart:math';

// void main() {
//   // Criar gerador de números
//   final random = Random();

//   // Utilizando o construtor [List.generate] para criar a lista
//   final lista = List.generate(10, (_) => random.nextInt(100));

//   // Imprimindo a lista conforme especificado
//   for (var indice = 0; indice < lista.length; indice++) {
//     print('Posicao: $indice, Valor: ${lista[indice]}');
//   }
// }
import 'dart:math';

void main() {
  final random = Random();
  final lista = List.generate(10, (index) => random.nextInt(101));

  for (var i = 0; i < lista.length; i++) {
    print('Posição: $i, valor: ${lista[i]}');
  }
}
