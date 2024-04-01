void main() {
  try {
    // Chama a função programa com o argumento 6
    programa(6);
    // Se a função programa não lançar uma exceção, imprime a mensagem de entrada correta
    print("Entrada correta, você inseriu um número par");
  } on Exception catch (e) {
    // Se a função programa lançar uma exceção do tipo Exception, captura e imprime a mensagem de erro
    print(e);
  }
}

// Função programa que lança uma exceção caso receba um número ímpar
void programa(int numero) {
  if (numero.isOdd) {
    // Lança uma exceção do tipo Exception com a mensagem especificada
    throw Exception('Entrada inválida. Insira apenas números pares');
  }
}
