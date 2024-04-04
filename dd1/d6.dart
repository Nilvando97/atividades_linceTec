void main() {
  // Lista de números inteiros fornecidos
  List<int> numeros = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];

  // Itera sobre cada número na lista
  for (int numero in numeros) {
    // Converte o número para sua representação binária
    String binario = numero.toRadixString(2);

    // Converte o número para sua representação octal
    String octal = numero.toRadixString(8);

    // Converte o número para sua representação hexadecimal
    String hexadecimal = numero.toRadixString(16);

    // Imprime no console as representações em decimal, binário, octal e hexadecimal do número atual
    print('decimal: $numero, binário: $binario, octal: $octal, hexadecimal: $hexadecimal');
  }
}
