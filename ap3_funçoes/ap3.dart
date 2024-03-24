import 'dart:math';

// Função para calcular a área de um círculo
double calcularAreaCirculo(double raio) {
  return pi * raio * raio;
}

// Função para calcular o perímetro de um círculo
double calcularPerimetroCirculo(double raio) {
  return 2 * pi * raio;
}

void main() {
  List<int> raios = List.generate(10, (_) => Random().nextInt(100) + 1);

  // Calcular e imprimir área e perímetro para cada raio da lista
  for (int raio in raios) {
    double area = calcularAreaCirculo(raio.toDouble());
    double perimetro = calcularPerimetroCirculo(raio.toDouble());
    print(
        'Raio: $raio, Área: ${area.toStringAsFixed(2)}, Perímetro: ${perimetro.toStringAsFixed(2)}');
  }
}
