// Definição da função que converte a string para inteiro
void converterStringParaInteiro(String entrada) {
  try {
    // Tenta converter a string para um inteiro
    int numero = int.parse(entrada);
    // Se a conversão for bem-sucedida, imprime o número
    print('Número digitado: $numero');
  } catch (e) {
    // Se ocorrer um erro durante a conversão, imprime uma mensagem de erro
    print('Entrada invalida. Insira apenas números inteiros.');
  }
}

void main() {
  // Chamada da função com uma entrada válida
  converterStringParaInteiro('999');
   // Chamada da função com uma entrada inválida
  converterStringParaInteiro('abc');
}
