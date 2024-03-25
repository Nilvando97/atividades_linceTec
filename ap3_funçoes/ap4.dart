import 'dart:math';

void main() {
  // Inicializar lista de números com 15 números inteiros entre 1 e 5000
  List<int> numeros = List.generate(15, (_) => Random().nextInt(5000) + 1);

  // Chamar a função para imprimir os números
  imprimirNumeros(numeros);
}

void imprimirNumeros(List<int> numeros) {
  // Ordenar a lista em ordem crescente
  numeros.sort();

  // Imprimir os números
  for (final decimal in numeros) {
    print(
      'decimal: $decimal, '
      'binário: ${converterParaBinario(decimal)}, '
      'octal: ${converterParaOctal(decimal)}, '
      'hexadecimal: ${converterParaHexadecimal(decimal)}',
    );
  }
}

// Retorna o número recebido em sua representação binaria
String converterParaBinario(int numero) => numero.toRadixString(2);

// Retorna o número recebido em sua representação octal
String converterParaOctal(int numero) => numero.toRadixString(8);

// Retorna o número recebido em sua representação hexadecimal
String converterParaHexadecimal(int numero) => numero.toRadixString(8);
