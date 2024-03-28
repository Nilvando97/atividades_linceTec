void main() {
  // Lista de nomes
  final listaNomes = [
    "Joao",
    "Maria",
    "Pedro",
    "Maria",
    "Ana",
    "Joao",
    "Maria",
    "Fernanda",
    "Carlos",
    "Maria"
  ];

  // Função para contar a quantidade de vezes que um nome aparece na lista
  int contarNome(List<String> nomes, String nome) {
    int contador = 0;
    for (String n in nomes) {
      if (n == nome) {
        contador++;
      }
    }
    return contador;
  }

  // Nome a ser procurado na lista
  final nome = 'Ana';
  // Chamada da função para contar a quantidade de vezes que o nome aparece na lista
  final quantidade = contarNome(listaNomes, nome);

  // Verifica a quantidade de vezes que o nome foi encontrado e imprime uma mensagem adequada
  if (quantidade == 1) {
    print('O nome $nome foi encontrado 1 vez');
  } else if (quantidade > 0) {
    print('O nome $nome foi encontrado $quantidade vezes');
  } else {
    print('O nome nao foi encontrado');
  }
}
