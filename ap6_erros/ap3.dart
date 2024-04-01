import 'dart:math';

// Interface Forma com método abstrato calcularArea
abstract class Forma {
  double calcularArea();
}

// Classe Retangulo que implementa a interface Forma
class Retangulo implements Forma {
  // Atributos privados base e altura
  double base, altura;

  // Construtor que recebe base e altura como parâmetros
  Retangulo(this.base, this.altura) {
    // Verifica se base e altura são maiores que zero
    if (base <= 0 || altura <= 0) {
      // Lança uma exceção se base ou altura forem menores ou iguais a zero
      throw Exception('Dimensões inválidas, informe apenas valores positivos maiores que zero');
    }
  }

  // Implementação do método calcularArea da interface Forma
  @override
  double calcularArea() {
    return base * altura;
  }
}

void main() {
  try {
    // Inicializa um retângulo com base e altura aleatórias entre 0 e 99
    var random = Random();
    double base = random.nextDouble() * 100;
    double altura = random.nextDouble() * 100;
    var retangulo = Retangulo(base, altura);

    // Calcula e imprime a área do retângulo
    print('Area do retângulo: ${retangulo.calcularArea().toStringAsFixed(2)}');
  } catch (e) {
    // Imprime a mensagem de erro caso ocorra uma exceção
    print('Exception: $e');
  }
}
