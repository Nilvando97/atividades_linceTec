import 'dart:math';

void main() {
  // Gerar dois números aleatórios entre 1 e 100
  final random = Random();
  final num1 = random.nextInt(100) + 1;
  final num2 = random.nextInt(100) + 1;

  // Realizar a divisão da primeira variável pela segunda
  final resultado = num1 / num2;

  // Salvar a parte inteira e a parte decimal do resultado
  final parteInteira = resultado.toInt();
  final parteDecimal = resultado - parteInteira;

  // Imprimir as variáveis
  print('Número 1: $num1');
  print('Número 2: $num2');
  print('Resultado: $resultado');
  print('Parte inteira: $parteInteira');
  print('Parte decimal: $parteDecimal');
}
