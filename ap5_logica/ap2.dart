import 'dart:math'; // Importa a biblioteca para usar números aleatórios

void main() {
  var random = Random(); // Cria uma instância de Random para gerar números aleatórios
  for (var i = 0; i < 5; i++) { // Loop para gerar 5 números aleatórios
    var numero = random.nextInt(26) + 1; // Gera um número aleatório entre 1 e 26
    var letra = converterNumeroParaLetra(numero); // Converte o número em letra
    print('Número $numero -> Letra $letra'); // Imprime o número e sua letra correspondente
  }
}

String converterNumeroParaLetra(int numero) {
  // A = 1, B = 2, ..., Z = 26
  if (numero < 1 || numero > 26) { // Verifica se o número está dentro do intervalo válido
    return 'Número inválido'; // Retorna uma mensagem de erro se o número for inválido
  }
  return String.fromCharCode(numero + 64); // Retorna a letra correspondente ao número, ajustando o valor para o código ASCII
}
