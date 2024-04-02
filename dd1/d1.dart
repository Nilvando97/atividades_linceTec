// Importa a biblioteca dart:math para utilizar o valor de pi
import 'dart:math';

void main() {
  // Lista de raios dos círculos
  List<double> raios = [5, 8, 12, 7.3, 18, 2, 25];

  // Itera sobre cada raio da lista
  for (double raio in raios) {
    // Calcula a área do círculo com o raio atual
    double area = calcularAreaCirculo(raio);

    // Calcula o perímetro (circunferência) do círculo com o raio atual
    double perimetro = calcularPerimetroCirculo(raio);

    // Exibe no console o raio, a área e o perímetro do círculo atual
    print('Raio: $raio, area: ${area.toStringAsFixed(2)}, perimetro: ${perimetro.toStringAsFixed(2)}');
  }
}

// Função para calcular a área de um círculo com base no raio
double calcularAreaCirculo(double raio) {
  return pi * raio * raio; // Fórmula da área: pi * raio^2
}

// Função para calcular o perímetro (circunferência) de um círculo com base no raio
double calcularPerimetroCirculo(double raio) {
  return 2 * pi * raio; // Fórmula do perímetro: 2 * pi * raio
}
