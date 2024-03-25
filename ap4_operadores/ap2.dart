// Função que recebe uma lista de strings e retorna uma lista de inteiros
List<int> converterLista(List<String> listaStrings) {
  // Lista que armazenará os números convertidos
  List<int> listaNumeros = [];
// Itera sobre cada string na lista de strings fornecida
  for (String str in listaStrings) {
    // Tenta converter a string em um número inteiro
    // Se a conversão falhar, retorna 0
    int numero = int.tryParse(str) ?? 0;
    // Adiciona o número (ou 0, se a conversão falhou) à lista de números
    listaNumeros.add(numero);
  }
// Retorna a lista de números convertidos
  return listaNumeros;
}

void main() {
  // Lista de strings fornecida
  List<String> strings = [
    '10',
    '2XXL7',
    'JOJ0',
    '99',
    '381',
    'AD44',
    '47',
    '2B',
    '123',
    '78'
  ];
// Chama a função converterLista para converter as strings em números
  List<int> numerosConvertidos = converterLista(strings);
// Imprime a lista de números convertidos, separados por vírgula
  print('Lista convertida: ${numerosConvertidos.join(', ')}');
}
