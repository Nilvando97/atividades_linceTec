import 'dart:math';

// Função A que recebe outra função como parâmetro e a executa duas vezes com números aleatórios
int funcaoA(int Function(int) funcao) {
  Random random = Random();
  int numero1 = random.nextInt(100);
  int numero2 = random.nextInt(100);

  int resultado1 = funcao(numero1);
  int resultado2 = funcao(numero2);

  return resultado1 + resultado2;
}

// Função B que recebe um número como parâmetro e retorna o dobro desse número
int funcaoB(int numero) {
  return numero * 2;
}

// Função C que recebe um número como parâmetro e retorna o quadrado desse número
int funcaoC(int numero) {
  return numero * numero;
}

void main() {
  // Executar a função A passando a função B como parâmetro
  int resultadoAComB = funcaoA(funcaoB);
  print('Resultado da função A(B): $resultadoAComB');

  // Executar a função A passando a função C como parâmetro
  int resultadoAComC = funcaoA(funcaoC);
  print('Resultado da função A(C): $resultadoAComC');
}
