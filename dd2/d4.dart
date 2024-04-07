import 'dart:math' as math;

void main() {
  final comparador = ComparadorFormasGeometricas();

  // Definição das formas geométricas
  final formas = [
    Circulo('Círculo A', 3),
    Circulo('Círculo B', 8),
    Retangulo('Retângulo A', 4, 3),
    Retangulo('Retângulo B', 19, 11),
    TrianguloEquilatero('Triângulo Equilátero A', 5),
    TrianguloEquilatero('Triângulo Equilátero B', 8),
    TrianguloRetangulo('Triângulo Retângulo A', 3, 4),
    TrianguloRetangulo('Triângulo Retângulo B', 5, 12),
    PentagonoRegular('Pentágono Regular A', 4),
    PentagonoRegular('Pentágono Regular B', 8),
    HexagonoRegular('Hexágono Regular A', 3),
    HexagonoRegular('Hexágono Regular B', 6),
  ];

  // Encontrar a forma com a maior área e o maior perímetro
  FormaGeometrica maiorArea = comparador.maiorArea(formas);
  FormaGeometrica maiorPerimetro = comparador.maiorPerimetro(formas);

  // Imprimir os resultados
  print('A maior área é ${maiorArea.nome} com área ${maiorArea.calcularArea().toStringAsFixed(2)}');
  print('O maior perímetro é ${maiorPerimetro.nome} com perímetro ${maiorPerimetro.calcularPerimetro().toStringAsFixed(2)}');
}

// Classe base para formas geométricas
abstract class FormaGeometrica {
  String nome;

  FormaGeometrica(this.nome);

  double calcularArea(); // Método abstrato para calcular a área
  double calcularPerimetro(); // Método abstrato para calcular o perímetro
}

// Implementação da classe Circulo
class Circulo extends FormaGeometrica {
  double raio;

  Circulo(String nome, this.raio) : super(nome);

  @override
  double calcularArea() => math.pi * math.pow(raio, 2);

  @override
  double calcularPerimetro() => 2 * math.pi * raio;
}

// Implementação da classe Retangulo
class Retangulo extends FormaGeometrica {
  double altura;
  double largura;

  Retangulo(String nome, this.altura, this.largura) : super(nome);

  @override
  double calcularArea() => altura * largura;

  @override
  double calcularPerimetro() => (altura * 2) + (largura * 2);
}

// Implementação da classe TrianguloEquilatero
class TrianguloEquilatero extends FormaGeometrica {
  double lado;

  TrianguloEquilatero(String nome, this.lado) : super(nome);

  @override
  double calcularArea() => (math.sqrt(3) * math.pow(lado, 2)) / 4;

  @override
  double calcularPerimetro() => lado * 3;
}

// Implementação da classe TrianguloRetangulo
class TrianguloRetangulo extends FormaGeometrica {
  double base;
  double altura;

  TrianguloRetangulo(String nome, this.base, this.altura) : super(nome);

  @override
  double calcularArea() => (base * altura) / 2;

  @override
  double calcularPerimetro() => base + altura + math.sqrt((base * base) + (altura * altura));
}

// Implementação da classe PentagonoRegular
class PentagonoRegular extends FormaGeometrica {
  double lado;

  PentagonoRegular(String nome, this.lado) : super(nome);

  @override
  double calcularArea() => (5 * lado * lado) / (4 * math.tan(math.pi / 5));

  @override
  double calcularPerimetro() => lado * 5;
}

// Implementação da classe HexagonoRegular
class HexagonoRegular extends FormaGeometrica {
  double lado;

  HexagonoRegular(String nome, this.lado) : super(nome);

  @override
  double calcularArea() => (3 * math.sqrt(3) * lado * lado) / 2;

  @override
  double calcularPerimetro() => lado * 6;
}

// Classe responsável por comparar formas geométricas
class ComparadorFormasGeometricas {
  FormaGeometrica maiorArea(List<FormaGeometrica> formas) {
    return formas.reduce((a, b) => a.calcularArea() > b.calcularArea() ? a : b);
  }

  FormaGeometrica maiorPerimetro(List<FormaGeometrica> formas) {
    return formas.reduce((a, b) => a.calcularPerimetro() > b.calcularPerimetro() ? a : b);
  }
}
