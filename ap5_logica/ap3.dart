import 'dart:math'; // Importa a biblioteca para gerar números aleatórios

// Função que recebe um número inteiro e retorna a soma de todos os números pares até esse número
int somaDosParesAte(int numero) {
  int soma = 0;
  for (int i = 0; i <= numero; i++) { // Loop de 0 até o número fornecido
    if (i % 2 == 0) { // Verifica se o número é par
      soma += i; // Adiciona o número par à soma total
    }
  }
  return soma; // Retorna a soma total dos números pares
}

void main() {
  var random = Random();
  // Gera um número aleatório entre 100 e 1000
  int numeroAleatorio = random.nextInt(901) + 100; // Número aleatório entre 100 e 1000
  // Chama a função com o número aleatório e armazena a soma dos pares
  int soma = somaDosParesAte(numeroAleatorio);
  // Imprime a mensagem com o número aleatório e a soma dos pares
  print('A soma dos números pares entre 0 e $numeroAleatorio é $soma');
}
