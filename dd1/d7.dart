void main() {
  // Lista de números inteiros fornecidos
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];

  // Calcula o somatório dos números usando diferentes abordagens
  int somatorioFor = somatorioForFunction(numeros);
  int somatorioWhile = somatorioWhileFunction(numeros);
  int somatorioRecursivo = somatorioRecursivoFunction(numeros);
  int somatorioLista = somatorioListaFunction(numeros);

  // Imprime os resultados no console
  print('for: $somatorioFor');
  print('while: $somatorioWhile');
  print('recursão: $somatorioRecursivo');
  print('lista: $somatorioLista');
}

// Calcula o somatório dos números usando o comando for
int somatorioForFunction(List<int> numeros) {
  int somatorio = 0;
  for (int i = 0; i < numeros.length; i++) {
    somatorio += numeros[i];
  }
  return somatorio;
}

// Calcula o somatório dos números usando o comando while
int somatorioWhileFunction(List<int> numeros) {
  int somatorio = 0;
  int i = 0;
  while (i < numeros.length) {
    somatorio += numeros[i];
    i++;
  }
  return somatorio;
}

// Calcula o somatório dos números usando recursão
int somatorioRecursivoFunction(List<int> numeros, [int index = 0]) {
  if (index >= numeros.length) {
    return 0;
  }
  return numeros[index] + somatorioRecursivoFunction(numeros, index + 1);
}

// Calcula o somatório dos números usando método de coleção
int somatorioListaFunction(List<int> numeros) {
  return numeros.reduce((value, element) => value + element);
}
