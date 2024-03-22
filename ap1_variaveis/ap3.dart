import 'dart:math';

void main() {
  final random = Random();
  const max = 100;

  var valorA = random.nextInt(max) + 1;
  var valorB = random.nextInt(max) + 1;

  print("----- VALORES ALEATÓRIOS -----");
  print("Valor A: $valorA");
  print("Valor B: $valorB");

  final auxiliar = valorA;
  valorA = valorB;
  valorB = auxiliar;

  print("----- VALORES INVERTIDOS -----");
  print("Valor A: $valorA");
  print("Valor B: $valorB");
}
