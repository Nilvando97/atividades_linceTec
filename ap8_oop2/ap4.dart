import 'dart:math';

// Classe abstrata Calculadora
abstract class Calculadora {
// Método estático que retorna o dobro de um número
  static int dobro(int numero) {
    return numero * 2;
  }
}

void main() {
// Criando uma instância da classe Random
  var random = Random();

// Gerando um número aleatório entre 0 e 9999
  int numeroAleatorio = random.nextInt(10000);

  // Calculando o dobro do número aleatório
  int resultado = Calculadora.dobro(numeroAleatorio);

  /// Exibindo o resultado no console
  print('O dobro do número $numeroAleatorio é: $resultado');
}
